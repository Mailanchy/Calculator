import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFF555465),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SafeArea(
                  child: Container(
                    height: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xFFBDE2C0),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumTiles(c: Color(0xFF868BD2), s: "c"),
                        NumTiles(c: Color(0xFF868BD2), s: "+/-"),
                        NumTiles(c: Color(0xFF868BD2), s: "%"),
                        NumTiles(c: Color(0xFFF26E76), s: "÷"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumTiles(c: Color(0xFF75738F), s: "7"),
                        NumTiles(c: Color(0xFF75738F), s: "8"),
                        NumTiles(c: Color(0xFF75738F), s: "9"),
                        NumTiles(c: Color(0xFFF26E76), s: "*"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumTiles(c: Color(0xFF75738F), s: "4"),
                        NumTiles(c: Color(0xFF75738F), s: "5"),
                        NumTiles(c: Color(0xFF75738F), s: "6"),
                        NumTiles(c: Color(0xFFF26E76), s: "-"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumTiles(c: Color(0xFF75738F), s: "1"),
                        NumTiles(c: Color(0xFF75738F), s: "2"),
                        NumTiles(c: Color(0xFF75738F), s: "3"),
                        NumTiles(c: Color(0xFFF26E76), s: "+"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child:
                                NumTiles(c: Color(0xFF75738F), s: "0")),
                        NumTiles(c: Color(0xFF75738F), s: "."),
                        NumTiles(c: Color(0xFFF26E76), s: "="),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumTiles extends StatelessWidget {
  final Color c;
  final String s;

  const NumTiles({super.key, required this.c, required this.s});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, c]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: c,
            ),
            child: Center(
              child: Text(
                s,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
