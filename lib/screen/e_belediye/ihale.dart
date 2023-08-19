import 'package:flutter/material.dart';
import 'dart:math';

class Ihaleler extends StatelessWidget {
  final List<Ihale> ihaleList = [
    Ihale(
      title: 'Okul İnşaatı',
      description: 'Yeni okul inşaatı için ihale açılmıştır.',
      date: DateTime(2023, 8, 15), // Örnek tarih
    ),
    Ihale(
      title: 'Yol Yapımı',
      description: 'Yeni yol yapımı için ihale açılmıştır.',
      date: DateTime(2023, 8, 20), // Örnek tarih
    ),
    Ihale(
      title: 'Köprü Onarımı',
      description: 'Köprü onarımı için ihale açılmıştır.',
      date: DateTime(2023, 8, 25), // Örnek tarih
    ),
    Ihale(
      title: 'Park Düzenlemesi',
      description: 'Yeni park düzenlemesi için ihale açılmıştır.',
      date: DateTime(2023, 9, 5), // Örnek tarih
    ),
    Ihale(
      title: 'Altyapı İyileştirme',
      description: 'Altyapı iyileştirme için ihale açılmıştır.',
      date: DateTime(2023, 9, 10), // Örnek tarih
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BELEDİYE İHALELER'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Aktif İhaleler',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: ihaleList.length,
                itemBuilder: (context, index) {
                  return IhaleCard(ihale: ihaleList[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Ihale {
  final String title;
  final String description;
  final DateTime date; // Yeni eklenen tarih alanı

  Ihale({
    required this.title,
    required this.description,
    required this.date, // Yeni eklenen tarih alanı
  });
}

class IhaleCard extends StatelessWidget {
  final Ihale ihale;

  IhaleCard({required this.ihale});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ihale.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 10),
          Text(
            ihale.description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Tarih: ${ihale.date.day}/${ihale.date.month}/${ihale.date.year}', // Tarih görüntüleme
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
