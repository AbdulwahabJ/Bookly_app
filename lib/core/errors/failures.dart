import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      //
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      //
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      //
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      //
      case DioExceptionType.cancel:
        return ServerFailure('Requst to ApiServer was canceld');
      //
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error! , please try agine');

      case DioExceptionType.connectionError:
        return ServerFailure('Unexpected Error! , please try later');
      //
      case DioExceptionType.badCertificate:
        return ServerFailure('Unexpected Error! , please try later');
      //
      default:
        return ServerFailure(
            'Opps!! There was an Error ,Please try agine later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your requst not found ,please try agine later');
    } else if (statusCode == 500) {
      return ServerFailure('Inernal Server Error ,please try agine later');
    } else {
      return ServerFailure('Opps!! There was an Error ,Please try agine later');
    }
  }
}
