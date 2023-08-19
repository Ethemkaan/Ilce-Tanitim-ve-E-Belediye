import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/yoresel_lezzetler.dart';
import 'package:flutter/material.dart';

class Sucuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("DEVELİ SUCUĞU",
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
            image: AssetImage("assets/sck3.jpeg"),
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
                      'Sucuk; sucukluk sığır etleri sarımsak ve baharat karıştırılıp bağırsaklara doldurularak hazırlanan yiyecektir. Özel kurutma ve renk aldırma işlemlerinden geçirilmelidir.'
                     ' Kurutma işlemi özelliği Başka yerde olmayan Kayseriye has gündüzleri sıcak, geceleri, serin esen rüzgar sucuğun uygun şekilde kurumasını sağlar. Bu rüzgar tek yönden değil yıl boyunca her yönden esen rüzgardır. Bu rüzgarın yöresel bir adı yoktur.',
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
                        'Sucuk için seçilen etler bu iş için özel olarak eğitilmiş sucuk ustaları tarafından önce kuşbaşı şeklinde hazırlanarak kıyma makinalarında kıyılır. Sucuk harman teknelerine konulur. Sucukluk yağlar kuşbaşı şeklinde kıyılarak üzerine konulur. Bu karışıma tuz, baharat, kimyon ve sarımsak ilave edilerek iyice karıştırılır. Karışım 1 gün teknede bekletilir. Kıyma makinalarında ince kıyma şeklinde kıyılarak sucuk hamuru hazırlanır. Sucuk hamuru özel makinalarla tabii ve suni bağırsaklara doldurulur. Bağırsaklara doldurulan sucuklar kurutulur.'

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
          'assets/sck1.jpg',
          'assets/sck2.jpeg',
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
