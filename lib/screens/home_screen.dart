import 'package:flutter/material.dart';
import 'package:widgets_basic/screens/bottomnavbar.dart';
import 'package:widgets_basic/constant/my_constant.dart';
//import 'package:widgets_basic/screens/bottomnavbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 20, 14),
        title: Text(
          'Flutter First My App',
          style: MyConstant().h1Style(),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 20,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'HOME SCREEN',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}