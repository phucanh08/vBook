part of 'exception_handler.dart';

class ExceptionMessageMapper {
  const ExceptionMessageMapper();

  String map(AppException appException) {
    switch (appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.badCertificate:
            return 'S.current.badCertificateException';
          case RemoteExceptionKind.noInternet:
            return t.sys.remote.no_internet_exception;
          case RemoteExceptionKind.network:
            return t.sys.remote.no_internet_exception;
          case RemoteExceptionKind.serverDefined:
            return exception.generalServerMessage ?? t.sys.remote.unknown_exception;
          case RemoteExceptionKind.serverUndefined:
            return exception.generalServerMessage ?? t.sys.remote.unknown_exception;
          case RemoteExceptionKind.timeout:
            return t.sys.remote.no_internet_exception;
          case RemoteExceptionKind.cancellation:
            return t.sys.remote.cancellation_exception;
          case RemoteExceptionKind.unknown:
            return '${t.sys.remote.unknown_exception}: ${exception.rootException}';
          case RemoteExceptionKind.refreshTokenFailed:
            return t.sys.remote.token_expired;
        }
      case AppExceptionType.parse:
        return 'S.current.parseException';
      case AppExceptionType.remoteConfig:
        return t.sys.remote.unknown_exception;
      case AppExceptionType.uncaught:
        return t.sys.remote.unknown_exception;
      case AppExceptionType.validation:
        final exception = appException as ValidationException;
        switch (exception.kind) {
          case ValidationExceptionKind.emptyEmail:
            return 'S.current.emptyEmail';
          case ValidationExceptionKind.invalidEmail:
            return 'S.current.invalidEmail';
          case ValidationExceptionKind.invalidPassword:
            return 'S.current.invalidPassword';
          case ValidationExceptionKind.invalidUserName:
            return 'S.current.invalidUserName';
          case ValidationExceptionKind.invalidPhoneNumber:
            return 'S.current.invalidPhoneNumber';
          case ValidationExceptionKind.invalidDateTime:
            return 'S.current.invalidDateTime';
          case ValidationExceptionKind.passwordsAreNotMatch:
            return 'S.current.passwordsAreNotMatch';
        }
    }
  }
}
