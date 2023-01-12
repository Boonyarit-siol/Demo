part of 'login_bloc.dart';


abstract class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
  // check ว่ามีการเปลี่ยนเเปลงไหม
}
class LoginEventAdd extends LoginEvent {

}
class LoginEventRemove extends LoginEvent {

}

