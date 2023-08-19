import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/yoresel_lezzetler.dart';
import 'package:flutter/material.dart';

class Civikli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("DEVELİ CIVIKLISI",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => YoreselLezzet())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cıvıklı.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage:AssetImage("assets/logo.jpg"),
                          radius: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                     color: Colors.white,
                    child: Text(
                      'İlçemizde fırıncılık mesleğinin tarihçesi, Hititlere kadar dayanmaktadır. Şöyle ki; ilçemiz, Kızık Köyü yakınlarında olan Ahmet Pınarı mevkiinde, Hititlere ait olduğu bilinen fırın yeri ve kül dökmek için yapılmış özel bölmelerin olduğu yer bundan yaklaşık 25 yıl öncesine kadar mevcut iken Kızık köyüne içme suyu getirme çalışmaları esnasında tamamen kaybolmuştur. '
                   '   İlçemiz  Kızık köyüne ait Karakuyu yaylasına ait Deliklitaş mevkiinde halen eski değirmen taşı mevcuttur. Bu taş yine aynı bölgeye yakın olan Ahmet Pınarındaki fırına yakındır'
                      ,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                     color: Colors.white,
                      child:Text(
                      'CIVIKLI adı ise tüm parça etin çift bıçak altında kıyılarak kıyma yapılması sonucu etin yağının da çift bıçak darbeleri ile erimesi sonucu cıvıdığından CIVIKLI adını almıştır.  '
                      ,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                ),
                Container(
                  height: 200,
                  child: photo()
                )
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
          'assets/cc1.jpg',
          'assets/cc2.jpg',
          'assets/cc3.jpg',
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

}
