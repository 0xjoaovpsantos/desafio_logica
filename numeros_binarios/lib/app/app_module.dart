import 'package:numeros_binarios/app/app_controller.dart';
import 'package:numeros_binarios/app/app_widget.dart';
import 'package:numeros_binarios/modules/home/home_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}