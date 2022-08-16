import 'package:flutter/material.dart';
import 'package:untitled/dio/apiProvider.dart';
import 'package:untitled/models/SuccessModel.dart';

class UserModel {
  UserModel({required this.id, required this.name, required this.phone});

  final int id;
  final String name;
  final String phone;

}


class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<UserModel> userModel = [
    UserModel(
        id: 1,
        name: 'mohamed',
        phone: '132456'
    ),
    UserModel(
        id: 2,
        name: 'ahmed',
        phone: '8489'
    ),
    UserModel(
        id: 3,
        name: 'khaled',
        phone: '95821'
    ),
    UserModel(
        id: 4,
        name: 'islam',
        phone: '15156'
    ),
    UserModel(
        id: 5,
        name: 'kamal',
        phone: '8981891'
    ),
    UserModel(
        id: 6,
        name: 'shahd',
        phone: '51980890'
    ),
    UserModel(
        id: 7,
        name: 'mariam',
        phone: '871879'
    ),
    UserModel(
        id: 8,
        name: 'nada',
        phone: '20984980'
    ),
    UserModel(
        id: 9,
        name: 'esraa',
        phone: '89891919'
    ),
    UserModel(
        id: 10,
        name: 'basma',
        phone: '132454586'
    ),

  ];

  SuccessModel? successModel;
  getData() async{
    successModel = await ApiProvider().getSuccessStories();
    setState(() {
      isLoading = false;
    });
    print(successModel?.model![0].id);
  }


  bool? isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mohamed'),
      ),
      body:isLoading!? CircularProgressIndicator():ListView.separated(
        itemCount: userModel.length,
        separatorBuilder: (context,index)=>const Divider(),
          itemBuilder: (context,i)=>buildUserItem(successModel!.model![i]),
      ),
    );
  }
}

Widget buildUserItem(Model success)=>Padding(
  padding: const EdgeInsets.all(15),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.blue,
        child: Text(
          '${success.id}',
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
      ),
      const SizedBox(
        width: 25,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            success.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          // Text(
          //   userModel[index].phone,
          //   style: const TextStyle(
          //     fontSize: 20,
          //   ),
          // ),
        ],
      )
    ],
  ),
);
