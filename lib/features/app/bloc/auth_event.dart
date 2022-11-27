part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class GetAuthEvent extends AuthEvent {
  final String email;
  final String password;
  GetAuthEvent(this.email, this.password);
}
