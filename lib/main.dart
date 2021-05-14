import 'package:flutter/material.dart';

import 'package:disenos/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
      },
    );
  }
}

/* Trabajar Basado En Widgets Es Mejor Que Trabajar Basados En Métodos, 
Por Que Asi Es Mas Eficiente Para Flutter A La Hora De Identificar
Si Debe Redibujar Un Widget O Dejarlo Asi. */
