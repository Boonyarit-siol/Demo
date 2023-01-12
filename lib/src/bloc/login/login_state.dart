part of 'login_bloc.dart';

@immutable
class LoginState extends Equatable {
  final int
      count; // ห้ามเเทรกเเซงค่าของตัวเเปร เช่น render อยู่เเล้วเปลี่ยนค่าทำให้ค่าผิดเพี้ยนได้

  const LoginState({this.count = 0});

  LoginState copyWith(int? count) {
    // int? count => คือส่งหรือไม่ส่งข้อความก็ได้
    //clone new object
    return LoginState(
        count: count ??
            this.count); // ?? this.count => ถ้าไม่มีการส่งค่าให้ส่งค่าเดิม
  } // return to LoginState

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}
