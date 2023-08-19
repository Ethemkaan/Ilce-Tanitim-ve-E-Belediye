import 'package:flutter/material.dart';

class Etkinlikler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ETKİNLİKLERİMİZ'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: EtkinlikListesi(),
      ),
    );
  }
}

class EtkinlikListesi extends StatelessWidget {
  final List<Etkinlik> etkinlikler = [
    Etkinlik(
      baslik: 'Konser: Pop Gecesi',
      aciklama: 'Pop müzik gruplarının sahne aldığı unutulmaz bir gece!',
      tarih: '10 Ekim 2023',
    ),
    Etkinlik(
      baslik: 'Kültürel Gezi: Tarihi Develi Evleri',
      aciklama: 'Develi\'nin tarihi evlerini gezmek için buluşuyoruz!',
      tarih: '15 Ekim 2023',
    ),
    Etkinlik(
      baslik: 'Spor Turnuvası: Basketbol',
      aciklama: 'Basketbol severler için heyecan dolu bir turnuva!',
      tarih: '20 Ekim 2023',
    ),
    Etkinlik(
      baslik: 'Doğa Yürüyüşü: Erciyes',
      aciklama: 'Erciyes\'in eşsiz doğasını keşfetmek için doğaya çıkıyoruz!',
      tarih: '25 Ekim 2023',
    ),
    Etkinlik(
      baslik: 'Sanat Atölyesi: Seramik',
      aciklama: 'Seramik sanatının inceliklerini öğrenmek için atölye çalışması!',
      tarih: '30 Ekim 2023',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: etkinlikler.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white.withOpacity(0.8),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(etkinlikler[index].baslik),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(etkinlikler[index].aciklama),
                SizedBox(height: 35),
                Text(etkinlikler[index].tarih),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                // Katıl butonuna basıldığında yapılacak işlem
              },
              child: Text('Rezervasyon'),
            ),
          ),
        );
      },
    );
  }
}

class Etkinlik {
  final String baslik;
  final String aciklama;
  final String tarih;

  Etkinlik({
    required this.baslik,
    required this.aciklama,
    required this.tarih,
  });
}
