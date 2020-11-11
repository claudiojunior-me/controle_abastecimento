import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: Text('Controle de Abastecimento'),
      centerTitle: true,
      toolbarHeight: 50.0,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/app_logo.svg',
              color: Colors.white,
              height: 80.0,
            ),
            Container(
              width: 200.0,
              child: Text(
                'Controle de Abastecimento',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
