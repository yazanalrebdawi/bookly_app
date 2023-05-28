import 'package:dio/dio.dart';

abstract class failure {
  final errorMessage;

  failure(this.errorMessage);
}

class serverFAilure extends failure {
  serverFAilure(super.errorMessage);
  factory serverFAilure.fromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioErrorType.connectionTimeout:
        return serverFAilure('Connection Timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return serverFAilure('send Timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return serverFAilure('Receive  Timeout with ApiServer');
      case DioErrorType.badCertificate:
        return serverFAilure('badCertificate');
      case DioErrorType.badResponse:
        return serverFAilure.fromeResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioErrorType.cancel:
        return serverFAilure('cancel');
      case DioErrorType.connectionError:
        return serverFAilure('connectionError');
      case DioErrorType.unknown:
        if (dioerror.message!.contains('SoketException')) {
          return serverFAilure('no internet concetion');
        }
        return serverFAilure('unexpected error');
      default:
        return serverFAilure(' oooooopsssss');
    }
  }
  factory serverFAilure.fromeResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serverFAilure(response['error']['message']);
    } else if (statusCode == 404) {
      return serverFAilure('method not found');
    } else {
      return serverFAilure('general error');
    }
  }
}
