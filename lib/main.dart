import 'package:flutter/material.dart';

// Std Dart BLoC delegate
import 'package:bloc/bloc.dart';

// App specific imports
import 'MyApp.dart';

void main(){
  BlocSupervisor().delegate = MyAppBlocDelegate();
  runApp(MyApp());
}
