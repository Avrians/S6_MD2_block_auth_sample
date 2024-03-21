import 'package:block_auth_sample/auth_bloc/auth_event.dart';
import 'package:block_auth_sample/auth_bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(AuthSuccess(name: 'Avriansyah'));
    });



  };
}