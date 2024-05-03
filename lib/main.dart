import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app/my_app.dart';

import 'app/network/bloc_observe.dart';
import 'app/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
