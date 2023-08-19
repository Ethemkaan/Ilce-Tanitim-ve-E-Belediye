import 'package:flutter/material.dart';
class Hizmetler extends StatelessWidget {
  const Hizmetler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BELEDİYE HİZMETLERİ'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.green],
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HizmetCard(
                icon: Icons.park,
                title: 'Park ve Yeşil Alanlar',
                description:
                'Develi Belediyesi olarak, ilçemizdeki park ve yeşil alanları güzelleştirmek ve halkımıza keyifli mekanlar sunmak için çalışmalar yapıyoruz.',
              ),
              SizedBox(height: 20),
              HizmetCard(
                icon: Icons.local_hospital,
                title: 'Hastaneler',
                description:
                'Belediye olarak, ilçemizdeki sağlık hizmetlerini güçlendirmek ve hastanelerimizin kapasitesini arttırmak için çalışmalar yapıyoruz.',
              ),
              SizedBox(height: 20),
              HizmetCard(
                icon: Icons.local_pharmacy,
                title: 'Eczaneler',
                description:
                'Develi Belediyesi olarak, halkımızın sağlık ihtiyaçlarını karşılamak için ilçemizdeki eczanelere destek oluyoruz ve sağlık hizmetlerinin daha erişilebilir olmasını sağlamak için çalışıyoruz.',
              ),
              SizedBox(height: 20),
              HizmetCard(
                icon: Icons.directions_bus,
                title: 'Ulaşım',
                description:
                'Belediye olarak, ilçemizin ulaşım altyapısını güçlendirmek ve ulaşımın daha kolay ve güvenli olmasını sağlamak için çalışıyoruz. Toplu taşıma ve yol bakımı konularına özen gösteriyoruz.',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class HizmetCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  HizmetCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.teal.shade50, // Kartın arka plan rengi
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.blue,
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
