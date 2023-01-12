import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginEventAdd>((event, emit) {
      // TODO: implement event handler
      // execute something
      // emit => การยิงหรือการเเจ้งเตือน ว่าต้องการเปลี่ยนเเปลง state
      // create login state ชุดใหม่ โดย จะเกิด จากค่า count ของเก่า
      // emit(state.copyWith(count: state.count + 1));
      // copy with => clone object
    });
    on<LoginEventRemove>((event, emit) {
      // execute something
      //  emit(state.copyWith(count: state.count - 1));
    });
  }
}
