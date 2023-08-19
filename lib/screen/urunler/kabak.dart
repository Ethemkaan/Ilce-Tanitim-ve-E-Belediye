import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/yoresel_lezzetler.dart';
import 'package:flutter/material.dart';

class Kabak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("KABAK ÇEKİRDEĞİ",
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
            image: AssetImage("assets/kabak.jpg"),
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
' Kuru ve Sulu tarımı yapılabilen bir ürünüdür.'
'Özellikle İç Anadoluda her ürünle münave özelliği vardır'                      ,
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
                     'Hasattan sonra çekirdek meyveden ayrıldığında yaş olarak kavrulabilir.Hasattan sonra nemli olmayan depolarda 1-2 yıl saklanabilir. Bu özelliğinden dolayı üreticisine uygun piyasa koşullarında pazarlama imkanı vermektedir.'

                            ,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      color: Colors.white,
                      child:Text(
                        ' Cilt kuruluğunun önüne geçer, cilt üstü ve altı iltihaplı dokuların da oluşumunu engeller. Kan yoğunluğunun dengelenmesinde filtreleme görevi üstlenen omega 6 gibi yağ asitleri, kan akışkanlığının dengelenmesine yardımcıdır. Ayrıca, besinlerin sindirimini kolaylaştırması besin değerlerinin emilimlerini olumlu etkiler.'
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
          'assets/kabak1.jpg',
          'assets/kabak2.jpg',
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
