// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../resources/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBlocBloc extends Bloc<AuthEvent, AuthState> {
  final _repository = AuthRepository();
  AuthBlocBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) => emit(AuthInitial()));
    on<GetAuthEvent>(_repository.onGetAuthEvent);
  }
}
