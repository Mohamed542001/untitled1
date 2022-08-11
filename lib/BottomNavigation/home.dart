import 'package:flutter/material.dart';
import 'package:untitled/BottomNavigation/ArchivedScreen.dart';
import 'package:untitled/BottomNavigation/DoneScreen.dart';
import 'package:untitled/BottomNavigation/TaskScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index=0;

  List screens = [
    const TaskScreen(),
    const DoneScreen(),
    const ArchivedScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task App'
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   child: Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i){
          print(i);
          setState(() {
            index=i;
          });
        },
        currentIndex: index,
        selectedIconTheme: const IconThemeData(
          color: Colors.red
        ),
        selectedItemColor: Colors.red,
        selectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.check),label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),label: 'Archived'),
        ],
      ),
      body: screens[index],
    );
  }
}
