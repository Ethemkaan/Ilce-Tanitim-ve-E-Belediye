import 'package:flutter/material.dart';

class TalepSayfasi extends StatefulWidget {
  @override
  _TalepSayfasiState createState() => _TalepSayfasiState();
}

class _TalepSayfasiState extends State<TalepSayfasi> {
  TextEditingController _baslikController = TextEditingController();
  TextEditingController _aciklamaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Talep Oluştur'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              child: TextFormField(
                controller: _baslikController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Başlık',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                controller: _aciklamaController,
                maxLines: 5,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Görsel Ekle', style: TextStyle(color: Colors.black)),
                  IconButton(
                    onPressed: () {
                      // Görsel seçme işlemi burada yapılabilir
                    },
                    icon: Icon(Icons.image, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Talep gönderme işlemleri burada yapılır
                String baslik = _baslikController.text;
                String aciklama = _aciklamaController.text;
                // Burada talep bilgileri ile ilgili işlemler yapılabilir, veritabanına kaydedilebilir vs.
                // Örnek olarak baslik ve aciklama değişkenlerini kullanabilirsiniz.
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Talep Gönderildi'),
                      content: Text('Talebiniz başarıyla gönderildi.'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Tamam'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Buton rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // Buton köşelerini yuvarlama
              ),
              child: Text('Talep Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
