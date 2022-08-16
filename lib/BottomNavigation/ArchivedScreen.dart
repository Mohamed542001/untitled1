import 'package:flutter/material.dart';
import 'package:untitled/dio/dioHelper.dart';
import 'package:untitled/models/testModel.dart';

class ArchivedScreen extends StatefulWidget {
  const ArchivedScreen({Key? key}) : super(key: key);

  @override
  State<ArchivedScreen> createState() => _ArchivedScreenState();
}

class _ArchivedScreenState extends State<ArchivedScreen> {

  TestModel? testModel;

  getData() async {
    testModel = await DioHelper().getSuccessData();
    setState(() {
      check = false;
    });
  }


  bool? check = true;
  @override
  Widget build(BuildContext context) {
    return check!
    ?CircularProgressIndicator()
    :Text(testModel!.model![1].title!);
  }
}
