import 'dart:math';

import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection timeout. Please try again.');
      // TODO: Handle this case.

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send timeout. Please try again.');
      // TODO: Handle this case.

      case DioExceptionType.receiveTimeout:
        // TODO: Handle this case.
        return ServerFailure(message: 'Receive timeout. Please try again.');

      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad certificate. Please try again.');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          error.response!.statusCode!,
          error.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request canceled. Please try again.');
      case DioExceptionType.connectionError:
        return ServerFailure(
          message: 'No internet connection. Please try again.',
        );
      case DioExceptionType.unknown:
        return ServerFailure(message: 'Unknown error. Please try again.');
      default:
        return ServerFailure(message: 'Opps there was an error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else {
      if (statusCode == 404) {
        return ServerFailure(message: 'Not found');
      } else if (statusCode == 500) {
        return ServerFailure(message: 'Internal server error');
      } else {
        return ServerFailure(message: 'Opps there was an error');
      }
    }
  }
}
