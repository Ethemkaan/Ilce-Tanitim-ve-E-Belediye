import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/gezelim_gorelim.dart';
import 'package:flutter/material.dart';

class SultanSazligi extends StatelessWidget {
  const SultanSazligi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("SULTAN SAZLIĞI",
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
          'assets/sz1.jpg',
          'assets/sz2.jpg',
          'assets/sz3.jpg',
          'assets/sz4.jpg',
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
              'Sultan Sazlığı',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Erciyesin kuzeyinde Kayseri merkeze 70 km. uzaklıktaki, Sultan Sazlığı ev sahipliği yaptığı 300 civarında kuş türü ve 400\'e yakın bitki türü ile doğayı gözlemlemek isteyenler için adeta bir cennet. Aralarında turna, filamingo ve dikkuyruğunda olduğu kuşlardan kimi yaşam alanı olarak, kimi durup dinlenmek için, kimi de yavrularını dünyaya getirmek için bu güzel sulak alanı tercih ediyor. Sazlıklar arasında kayıkla gezilebilir, yeşil, mavi ve sarının yarattığı büyüleyici bir fonda zarafet ve incelik abidesi kuşları fotoğraflayabilirsiniz.',
              style: TextStyle(fontSize: 16,),
            ),
            SizedBox(height: 16),
            Text(
              'Büyük bir kısmı sazlarla kaplı olan Sultan Sazlığında yer yer kamış, kafa otu ve kındıra bulunur. Gölde açık havalarda nilüfer ve süsen, bununla birlikte çok sayıda yüzen saz adacıkları yer almaktadır. Bu tatlı su kompleksi güney ve kuzeyde tuzlu bir göl olan Yay Gölü ile ayrılır.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'İç Anadolu step ekosistemi içerisinde sahip olduğu zengin biyolojik çeşitliliği ve Afrika ile Avrupa arasındaki göçmen kuşların kullandığı iki ana kuş göç yolunun bu alanda kesişmesi nedeniyle ülkemizdeki en önemli sulak alanlardan birisidir.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Erciyes eteklerinde bulunan Sultan Sazlığı doğal güzelliği yanısıra ilimiz ekonomisine hasırcılık ve el sanatları alanında da katkı sağlamaktadır, Bilinçli eğitimli çevre köylülerimiz sonbaharda ürettikleri saz ve sazdan yapılan el sanatı ürünlerini ülke ekonomisine kazandırmaktadırlar.',
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
              subtitle: Text('Ovaçiftlik, 38800 Yeşilhisar/Kayseri'),
            ),
          ),
        ],
      ),
    );
  }
}
