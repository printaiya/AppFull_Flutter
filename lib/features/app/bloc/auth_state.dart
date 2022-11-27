part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthBlocInitial extends AuthState {}

// Состояние когда только включилась
class AuthInitial extends AuthState {}

class UnAuthState extends AuthState {}

// Состояние в загрузке
class LoadingAuthState extends AuthState {}

// Состояние в загружено
class LoadedAuthState extends AuthState {}

// Состояние ошибка при получении чего либо
class FailureLoginState extends AuthState {}
