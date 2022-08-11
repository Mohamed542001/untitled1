import 'package:flutter/material.dart';

class UserModel {
  UserModel({required this.id, required this.name, required this.phone});

  final int id;
  final String name;
  final String phone;

}


class UserScreen extends StatelessWidget {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mohamed'),
      ),
      body: ListView.separated(
        itemCount: userModel.length,
        separatorBuilder: (context,index)=>const Divider(),
          itemBuilder: (context,i)=>Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: Text(
                    '${userModel[i].id}',
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
                      userModel[i].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),
                    ),
                    Text(
                      userModel[i].phone,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
