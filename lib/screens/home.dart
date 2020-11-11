import 'package:controle_abastecimento/components/floating_action_buttons.dart';
import 'package:controle_abastecimento/components/home_app_bar.dart';
import 'package:controle_abastecimento/components/home_card.dart';
import 'package:controle_abastecimento/components/home_last_fuel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: HomeAppBar(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButtons(),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeCard(),
            LastFuel(),
          ],
        ),
      ),
    );
  }
}
