import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SempleBlocObserver implements BlocObserver {
  @override
  @override
  void onClose(BlocBase bloc) {
    debugPrint("close  =  $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    debugPrint("create  =  $bloc");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
