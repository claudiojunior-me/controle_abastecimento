import 'package:controle_abastecimento/config.dart';
import 'package:controle_abastecimento/models/fuel_entry.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastFuel extends StatelessWidget {
  final FuelEntry _fuelEntry_1 = new FuelEntry(
    valueTotal: 30.0,
    valueUnit: 2.99,
    fuelQuantity: 10.94,
    entryDate: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ultimos Abastecimentos',
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        LastFuelItem(_fuelEntry_1),
        LastFuelItem(_fuelEntry_1),
        LastFuelItem(_fuelEntry_1),
      ],
    );
  }
}

class LastFuelItem extends StatelessWidget {
  final FuelEntry _fuelEntry;

  const LastFuelItem(this._fuelEntry);

  @override
  Widget build(BuildContext context) {
    var numberFormat = NumberFormat('###.00', 'pt_BR');

    final _entryDate = DateFormat('dd/MM').format(_fuelEntry.entryDate);
    final _valueUnit = numberFormat.format(_fuelEntry.valueUnit);
    final _fuelQuantity = numberFormat.format(_fuelEntry.fuelQuantity);
    final _valueTotal = numberFormat.format(_fuelEntry.valueTotal);

    return Container(
      margin: EdgeInsets.only(top: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$_entryDate',
            style: TextStyle(
              color: Colors.black.withOpacity(0.65),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'R\$ $_valueUnit/Lt',
            style: TextStyle(
              color: Colors.black.withOpacity(0.65),
              fontSize: 16.0,
            ),
          ),
          Text(
            '$_fuelQuantity Lt\'s',
            style: TextStyle(
              color: Colors.black.withOpacity(0.65),
              fontSize: 16.0,
            ),
          ),
          Text(
            'R\$ $_valueTotal',
            style: TextStyle(
              color: Colors.black.withOpacity(0.65),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
