part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  final int count; // ห้ามเเทรกเเซงค่าของตัวเเปร เช่น render อยู่เเล้วเปลี่ยนค่าทำให้ค่าผิดเพี้ยนได้

  LoginState({required this.count});
}


