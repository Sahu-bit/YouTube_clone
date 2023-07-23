//import 'dart:collection';

import 'package:flutter/material.dart';
import './home.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int index = 0;
  AppBar _buildAppBar(){
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: SizedBox(
          height: 40,
          child: Image.network(
            'https://global-uploads.webflow.com/61a907435e921b40a377d1c2/61a907435e921b656277d514_2560px-Logo_of_YouTube_(2015-2017).svg%20copy.png'
          ),
        ),
        actions: const [
          Icon(Icons.cast, color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.notifications, color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 20,)
        ],
    );
  }

  List<BottomNavigationBarItem> _getItems(){
    return const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Library'),
        ];
  }
  List<Widget> _screens(){
    return [const Home(), const Text('Subscriptions'), const Text('Library')];
  }

  @override
  Widget build(BuildContext context) {
    // UI code is here
    return Scaffold(
      body: _screens()[index],
      appBar: _buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int currentIndex){
          index = currentIndex;
          setState(() {});
        }, 
        currentIndex: index,
        items: _getItems()),
    );
  }
}