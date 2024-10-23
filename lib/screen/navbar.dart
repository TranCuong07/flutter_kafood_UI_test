import 'package:flutter/material.dart';
import 'package:myapp/screen/allergy.dart';
import 'package:myapp/screen/bmi.dart';
import 'package:myapp/screen/history.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/menu.dart';
import 'account_setting.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectionIndex = 0;

  // Danh sách các widget sẽ hiển thị khi nhấn từng mục
  final List<Widget> _pages = [
    Home(),
    History(),
    Menu(),
    BMIPage(),
    AccountPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bottom Navigation'),
      // ),
      body: _pages[_selectionIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectionIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Lịch sử',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.qr_code, size: 40),
            label: 'Quét mọi QR',
            activeIcon: Icon(Icons.qr_code,
                size: 35), 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Nghỉ học',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Tài khoản',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}