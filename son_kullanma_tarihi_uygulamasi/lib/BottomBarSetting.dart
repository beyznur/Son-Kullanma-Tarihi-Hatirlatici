import 'package:flutter/material.dart';
import 'package:skt_uygulamasi/UrunlerSayfasi.dart';
import 'ProfilSayfasi.dart';
import 'BildirimlerSayfasi.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> screens = [
    Bildirimler(),
    Profil(),
    UrunlerSayfasi(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = UrunlerSayfasi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
              label: "Urunler",
              icon: Icon(
                Icons.home,
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              label: "Bildirimler",
              icon: Icon(Icons.circle_notifications_outlined),
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
              label: "Profil",
              icon: Icon(Icons.person),
              backgroundColor: Colors.greenAccent),
        ],
        onTap: (index) {
          setState(() {
            switch (index) {
              case 0:
                {
                  currentIndex = index;
                  currentScreen = UrunlerSayfasi();
                }
                break;

              case 1:
                {
                  currentIndex = index;
                  currentScreen = Bildirimler();
                }
                break;

              case 2:
                {
                  currentIndex = index;
                  currentScreen = Profil();
                }
                break;
            }
          });
        },
      ),
    );
  }
}

class _UrunlerSayfasiState extends State<UrunlerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
