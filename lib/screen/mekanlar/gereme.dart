import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/gezelim_gorelim.dart';
import 'package:flutter/material.dart';

class Gereme extends StatelessWidget {
  const Gereme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("GEREME HARABELERİ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Gezelim())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox( height: 230,   child: photo()),
                InfoCard(),
                locationCard()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget photo() {
    return Container(
      height: 200,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: [
          'assets/g1.jpg',
          'assets/g2.jpg',
          'assets/g3.jpg',
          'assets/g4.jpg',
        ].map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget InfoCard() {
    return Card(
      color:  Color(0xff60B2D7),
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gereme Harabeleri',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(height: 16),
            Text(
              'Develi ilçesinin 12 km. kuzeyinde ve Erciyes Dağı’nın güney eteğindedir. Lifos tepesi ile Erciyes arasında kalan dik vadide bulunmaktadır.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Şarkın önemli mabet manastır kalıntıları  bu batık şehir, ilçemiz turizmi bakımından büyük bir değer taşımaktadır. Yüksekliği 2000-2500 metreyi bulan bölgenin etrafı kilise tepe, yamaç tepe, gök tepe ve kartın tepeleriyle çevrilmiştir.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Bu bölgeye ilk önce Proto Hititler, Hititler; Asurlar, Firigyalılar, Romalılar gelmiştir. En son gelen Bizanslar bugünkü tarihi kalıntıları bırakmışlardır. Gereme, Türkler eline 1071 tarihinden geçmiş olup, bugün yayla olarak kullanılmaktadır.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
  Widget locationCard() {
    return Card(
      color:  Color(0xff60B2D7),
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 80,
            child: ListTile(
              leading: Icon(Icons.location_on,
                  size:55, color: Colors.white),
              title: Text('Adres'),
              subtitle: Text('Kızık,38400 Develi/Kayseri'),
            ),
          ),
        ],
      ),
    );
  }
}
