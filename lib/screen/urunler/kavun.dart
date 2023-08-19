import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/yoresel_lezzetler.dart';
import 'package:flutter/material.dart';

class Kavun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("TOPATAN KAVUNU",
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
            image: AssetImage("assets/kavun.jpg"),
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
                      "Ata tohum olan bu tür ince kabuklu ve lezzetlidir.Erkenci bir çeşit olup tohumdan hasada yaklaşık 80 günde ulaşır.Meyve ağırlığı 2 kg civarındadır."                     ,
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
                        'İnce ve sarı kabuklu olup dayanıksızdır. Uzun oval şekilli, üzeri düz parlak, bazıları hafif ağ şeklinde çitilidir. Kabuğu başlangıçta yeşil renkli olup olgunlaştıkça sararır. Meyve et rengi beyaz, lezzetli olup tatlı ve güzel kokuludur.'

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
          'assets/kavun1.jpg',
          'assets/kavun2.jpg',
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
