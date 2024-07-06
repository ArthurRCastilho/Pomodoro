import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          overlayColor: store.estaTrabalhando() ? Colors.red : Colors.green,
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          textStyle: TextStyle(
            fontSize: 25,
          )),
      onPressed: click,
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
