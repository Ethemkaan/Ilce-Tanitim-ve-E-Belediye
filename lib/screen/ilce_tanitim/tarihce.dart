import 'package:flutter/material.dart';

import 'anasayfa.dart';

class Tarih extends StatelessWidget {
  const Tarih({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Colors.brown,
      centerTitle: true,
      title: Text("--GEÇMİŞTEN BUGÜNE--",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/tarih.jpg"),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     // color: Colors.brown,
                      child: Text(
                        "Develi, yüzyıllar boyunca çeşitli medeniyetlerin önemli yerleşim yerlerinden biri olmuştur. İlk yerleşme tarihi tam olarak tespit edilememişse de; Develi ve civarında oldukça eski dönemlere ait yerleşim izlerine rastlanılmaktadır."
                        ,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     //   color: Colors.brown,
                        child:Text(""
                            "Gümüşören, Taşçı Abideleri bu bölgede yerleşim yerinin bolluğu Hititler devrinde Develi’nin yerleşim merkezi olduğunu göstermiştir. Hitit Krallığının M.Ö.1200 yılında yıkılmasından sonra Frigler Anadolu’yu egemenlikleri altına almışlar. Gümüşören (Fraktın) Köyü ve Kızılırmak bölgesinin Frigler zamanında da önemini koruduğu anlaşılmaktadır. Pers hükümdarlığı zamanında da merkezi Mazaka (Kayseri) olan toprakları içinde Develi’de yer almaktadır.",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                   //   color: Colors.brown,
                      child: Text(
                        "1856 yılında bucak merkezi haline getirilen ilçemiz, 1864 yılında eyaletler kaldırılıp, vilayetler kurulunca Ankara Vilayeti, Kayseri Livası’na bağlanmıştır. 1870 yılında İlçe teşkilatı, 1871 yılında Belediye Teşkilatı kurulmuştur. 1957 yılında Zile, 1966 yılında Şıhlı, 1967 yılında Sindelhöyük, 1989 yılında da Gazi Köylerinde Belediye teşkilatı kurulmuştur. 6360 sayılı Yasa ile 30 Mart 2014 Mahalli İdareler Genel Seçimlerinden sonra beldeler ve köyler mahalleye dönüştürülmüştür."
                        ,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: PageView(
                      children: [
                        Image.asset("assets/gdeveli.jpg"),
                        Image.asset("assets/tarih4.jpg"),
                        Image.asset("assets/tarih2.jpg"),
                        Image.asset("assets/tarih3.jpg"),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
