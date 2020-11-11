import 'package:controle_abastecimento/config.dart';
import 'package:controle_abastecimento/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ControleAbastecimento());
}

class ControleAbastecimento extends StatelessWidget {
  const ControleAbastecimento({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Abastecimento',
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
