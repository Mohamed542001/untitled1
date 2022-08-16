import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/BottomNavigation/ArchivedScreen.dart';
import 'package:untitled/BottomNavigation/DoneScreen.dart';
import 'package:untitled/BottomNavigation/TaskScreen.dart';
import 'package:untitled/dio/apiProvider.dart';
import 'package:untitled/models/SuccessModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  SuccessModel? successModel;
  getData() async{
    successModel = await ApiProvider().getSuccessStories();
    setState(() {
      isLoading = false;
    });
    print(successModel?.model![0].title);
  }




  int index=0;
  bool? isLoading=true;
  List screens = [
    const TaskScreen(),
    const DoneScreen(),
    const ArchivedScreen()
  ];

  createSharedPreferences() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setInt('id', 4);
    sharedPreferences.setString('name', 'Mohamed');

    int? id = sharedPreferences.getInt('id');
    String? name = sharedPreferences.getString('name');

    print(id);
    print(name);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    createSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
      // body: isLoading!
      //     ?CircularProgressIndicator()
      // :Image.network(successModel!.model![0].image!),
    );
  }
}
