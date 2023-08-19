import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/gezelim_gorelim.dart';
import 'package:flutter/material.dart';

class Soysalli extends StatelessWidget {
  const Soysalli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("SOYSALLI BÜĞÜLEYEN",
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
          'assets/s1.jpg',
          'assets/s2.jpg',
          'assets/s3.jpg',
          'assets/s4.jpg',
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
              'Soysallı Büğüleyen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(height: 16),
            Text(
              'Erciyes Dağının batısında bulunan Soysallı Pınarları, dağların zirvesindeki karların erimesinden beslenerek göl halini alıyor. ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Soysallı Pınarları aynı zamanda, dünyanın en güzel kuş cennetlerinden biri olarak bilinen Sultan Sazlığının da tek doğal kaynağı.' ,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Burada oluşan küçük adacıklar ve ağaçlar insana rüyadaymışçasına bir his uyandırıyor.',
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
              subtitle: Text('Soysallı,38400 Develi/Kayseri'),
            ),
          ),
        ],
      ),
    );
  }
}
