
import 'package:flutter/material.dart';

class Baskan extends StatelessWidget {
  const Baskan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BELEDİYE BAŞKANI'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.green],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/baskan.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                'Mehmet Cabbar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Özgeçmiş',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Mehmet Cabbar, 1974 yılında Develi Abdulbaki Mahallesinde doğdu. İlkokul eğitimini İnönü İlkokulunda, ortaokul eğitimini Merkez Ortaokulunda tamamladı ve liseyi Develi Lisesinde başarıyla bitirdi. Üniversite eğitimine Anadolu Üniversitesi Kamu Yönetimi bölümünde devam ederek mezun oldu. Yüksek lisansını Hoca Ahmet Yesevi Uluslararası Türk-Kazak Üniversitesi Sosyal Bilimler Fakültesinde Yerel Yönetimler alanında tamamladı.\n\nAskerlik hizmetini 1996 yılında Muğla\'da başarıyla tamamladı. 2000 yılında sigorta ve aracılık hizmetleri sektöründe iş hayatına adım atan Mehmet Cabbar, 2006 yılında Ak Parti ilçe yönetim kurulu ve yürütme kurulu üyeliğine seçilerek aktif siyasi hayatına başladı.\n\nHalen ticaret odası disiplin kurulu üyeliği ve çeşitli mesleki derneklerde üyeliği bulunan Mehmet Cabbar, evli ve üç çocuk babasıdır.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
