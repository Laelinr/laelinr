import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center, // Atur posisi ke kiri
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
            children: [
              TeksUtama(
                teks1: 'ATHIROH QOTHRUN NADA',
                teks2: 'STI202102295 ',
              ),
              TeksUtama(
                teks1: 'FIRA ANDIANI',
                teks2: 'STI202102302',
              ),
              Container( 
                color: Colors.green, 
                child: TeksUtama(
                  teks1: 'LAELI NUR ROHMAH ',
                  teks2: 'STI202102305',
                ),
              ),
              TeksUtama(
                teks1: 'ANUGERAH BAGUS PRATAMA',
                teks2: 'STI202102306',
              ),
              TeksUtama(
                teks1: 'NAUFAL AL ZARAH JAHSHY',
                teks2: 'STI202102307',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}