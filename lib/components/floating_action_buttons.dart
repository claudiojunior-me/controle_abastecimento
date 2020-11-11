import 'package:controle_abastecimento/components/editor.dart';
import 'package:controle_abastecimento/components/text_field_date_picker.dart';
import 'package:controle_abastecimento/config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime selectedDate = DateTime.now();

class FloatingActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {},
              child: Icon(Icons.history),
              backgroundColor: Colors.white,
              foregroundColor: primaryColor,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton.extended(
              heroTag: null,
              elevation: 0.0,
              foregroundColor: Colors.white,
              label: Text('Novo Abatecimento'),
              icon: Icon(Icons.add),
              onPressed: () {
                Future<void> _askedToLead() async {
                  switch (await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: const Text('Novo Abastecimento'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: TextFieldDatePicker(
                                      labelText: 'Data',
                                      dateFormat: DateFormat('d/M/y'),
                                      lastDate: DateTime.now()
                                          .add(Duration(days: 366)),
                                      firstDate: DateTime(2018),
                                      initialDate: DateTime.now(),
                                      onDateChanged: (selectedDate) {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Editor(
                                        controllerEdit: null,
                                        label: 'Preço por Litro',
                                        hint: '0,00'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Editor(
                                        controllerEdit: null,
                                        label: 'Quantidade de Litros',
                                        hint: '00'),
                                  ),
                                  Editor(
                                      controllerEdit: null,
                                      label: 'Valor Total',
                                      hint: '0,00'),
                                ],
                              ),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: const Text('Treasury department'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: const Text('State department'),
                            ),
                          ],
                        );
                      })) {
                    // then code
                  }
                }

                _askedToLead();
              },
            ),
          ),
        ],
      ),
    );
  }

  void _buildShowDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
    );

    if (picked != null && picked != selectedDate) {
      // setState(() {
      //   selectedDate = picked;
      // });
    }
  }
}
