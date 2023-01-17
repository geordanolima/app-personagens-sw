import 'package:app_curso_flutter_formacao/components/task.dart';
import 'package:flutter/material.dart';

const String _titulo = 'Personagens';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(_titulo),
      ),
      body: AnimatedOpacity(
        opacity: (opacidade) ? 1 : 0,
        duration: const Duration(
          microseconds: 800,
        ),
        child: ListView(
          children: const [
            Task(
              'Luke',
              'assets/images/1.jpg',
              4,
            ),
            Task(
              'C3po',
              'assets/images/2.jpg',
              2,
            ),
            Task(
              'R2D2',
              'assets/images/3.jpg',
              3,
            ),
            Task(
              'Dart Vader',
              'assets/images/4.jpg',
              5,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon((opacidade)
            ? Icons.remove_red_eye_outlined
            : Icons.no_encryption_rounded),
      ),
    );
  }
}
