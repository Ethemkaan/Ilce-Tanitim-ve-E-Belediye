import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/gezelim_gorelim.dart';
import 'package:flutter/material.dart';

class YeraltiSehri extends StatelessWidget {
  const YeraltiSehri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("ÇOMAKLI YER ALTI MAĞARALARI ",
            style: TextStyle(
              fontSize: 19,
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
          'assets/ys1.jpg',
          'assets/ys2.jpg',
          'assets/ys3.jpg',
          'assets/ys4.jpg',
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
              'Çomaklı Yeraltı Şehri',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(height: 16),
            Text(
              'Yer altı Şehri Yontma Taş Devrine ait bir yapıdır.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Çomaklı Köyünün yaklaşık 500 metre doğusunda bulunur. ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Yer altı şehirlerinde dar koridorlarla birbirine bağlanan odalar,zeminde depo olarak kullanılan çukurlar ,havalandırma bacaları ve büyük bir sürgü taşı bulunmaktadır. Yer yer 2-3 katlı olan şehrinin duvarlarında nişler vardır.',
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
              subtitle: Text('Çomaklı,38400 Develi/Kayseri'),
            ),
          ),
        ],
      ),
    );
  }
}
