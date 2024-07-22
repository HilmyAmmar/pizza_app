part of 'authentication_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  final AuthenticationStatus status;
  final MyUser? user;

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(MyUser myUser)
      : this._(status: AuthenticationStatus.authenticated, user: myUser);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);
  @override
  List<Object?> get props => [status, user];
}

/*
AutheticationState._ is a private constructor, restricts the creation of instances to 
within the same library

AuthenticationState.unknown() and the rest is the result of named constructor, it allows the class
to have multiple ways to create the instances

you can add constructor to a class by directly using its name and set the desire parameter

but what if you need the class to have different constructor that have their own name and properties value?
this could be achieve by adding (.) and the constructor name after the class name. 
*/