abstract class AuthEvent{}

class AuthInitial extends AuthEvent {}

class AuthLoading extends AuthEvent {}

class AuthSuccess extends AuthEvent {
  final String name;

  AuthSuccess({required this.name});
}

class AuthError extends AuthEvent {
  final String message;

  AuthError({required this.message});
}