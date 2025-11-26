import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {

  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.home, color: Colors.blueGrey, size: 30),
          title: const Text("الصفحة الرئيسية"),
          subtitle: const Text("هنا تجد كل شيء"),

        ),
        ListTile(
          leading: const Icon(Icons.settings, color: Colors.blueGrey, size: 30),
          title: const Text("الإعدادات"),
          subtitle: const Text("تخصيص التطبيق"),
        ),
        ListTile(
          leading: const Icon(Icons.person, color: Colors.blueGrey, size: 30),
          title: const Text("الملف الشخصي"),
          subtitle: const Text("معلومات المستخدم"),
        ),
      ],
    );
  }
}