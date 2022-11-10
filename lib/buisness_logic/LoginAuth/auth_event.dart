part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class GetAuthEvent extends AuthEvent {
  final String barcode;
  final String password;
  GetAuthEvent(this.barcode, this.password);
}
