import 'package:flutter/material.dart';

class Duyurular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Duyurular'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: DuyuruListesi(),
      ),
    );
  }
}

class DuyuruListesi extends StatelessWidget {
  final List<Duyuru> duyurular = [
    Duyuru(
      baslik: 'Duyuru 1',
      icerik: 'Develi Belediyesi olarak, yeni bir parkın açılışını duyurmaktan mutluluk duyarız. Parkımızda çocuklar için oyun alanları, aileler için dinlenme alanları ve yeşil alanlar bulunmaktadır. Tüm halkımızı açılışımıza bekliyoruz.',
      tarih: '1 Eylül 2023',
    ),
    Duyuru(
      baslik: 'Duyuru 2',
      icerik: 'Develi Belediyesi olarak, ulaşım ve trafik düzenlemeleri kapsamında önemli bir çalışmayı tamamladık. Yenilenen yollar ve trafik işaretlemeleriyle ilgili bilgilendirme toplantısı yapılacaktır. Tüm sürücülerimizin katılımını bekliyoruz.',
      tarih: '5 Eylül 2023',
    ),
    Duyuru(
      baslik: 'Duyuru 3',
      icerik: 'Develi Belediyesi Sağlık Merkezi, yeni bir hizmete başlamaktan mutluluk duyar. Artık halkımız, belediyemizde ücretsiz sağlık taramalarından faydalanabilirler. Sağlık merkezimize tüm halkımızı bekleriz.',
      tarih: '10 Eylül 2023',
    ),
    Duyuru(
      baslik: 'Duyuru 4',
      icerik: 'Develi Belediyesi, ilçemizin kültürel mirasını koruma ve tanıtma çalışmalarına devam ediyor. Tarihi mekanlarımızın restorasyonu tamamlandı ve açılış töreni yapılacaktır. Tüm vatandaşlarımız davetlidir.',
      tarih: '15 Eylül 2023',
    ),
    Duyuru(
      baslik: 'Duyuru 5',
      icerik: 'Develi Belediyesi, çevre ve doğa koruma çalışmaları kapsamında bir temizlik etkinliği düzenleyecektir. Tüm halkımızı doğaya duyarlılık göstermeye ve katılım sağlamaya davet ediyoruz.',
      tarih: '20 Eylül 2023',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: duyurular.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white.withOpacity(0.8),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ExpansionTile(
            leading: Icon(Icons.info_outline),
            title: Text(duyurular[index].baslik),
            subtitle: Text(duyurular[index].tarih),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(duyurular[index].icerik),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Duyuru {
  final String baslik;
  final String icerik;
  final String tarih;

  Duyuru({
    required this.baslik,
    required this.icerik,
    required this.tarih,
  });
}
