import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor(
      {@required TextEditingController controllerEdit,
      @required String label,
      @required String hint,
      Icon icon})
      : _controllerEdit = controllerEdit,
        _label = label,
        _hint = hint,
        _icon = icon;

  final TextEditingController _controllerEdit;
  final String _label;
  final String _hint;
  final Icon _icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controllerEdit,
      style: TextStyle(
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        labelText: _label,
        hintText: _hint,
        icon: _icon,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
