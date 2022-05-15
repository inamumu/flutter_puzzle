import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterPuzzle());
}

class FlutterPuzzle extends StatelessWidget {
  const FlutterPuzzle({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterPuzzle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'スライドパズル',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => showPuzzlePage(context),
              child: const Text('スタート'),
            )
          ],
        ),
      ),
    );
  }
}

void showPuzzlePage(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PuzzlePage()),
  );
}

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({Key? key}) : super(key: key);

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スライドパズル'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: TilesView(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => {},
                icon: const Icon(Icons.shuffle),
                label: const Text('シャッフル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TilesView extends StatelessWidget {
  const TilesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
