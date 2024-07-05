import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          textStyle: TextStyle(
            fontSize: 25,
          )),
      onPressed: () {},
      icon: Icon(
        icone,
        color: Colors.white,
        size: 35,
      ),
      label: Text(
        texto,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
