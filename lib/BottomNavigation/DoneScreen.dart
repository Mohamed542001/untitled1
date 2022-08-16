import 'package:flutter/material.dart';
import 'package:untitled/dio/dioHelper.dart';
import 'package:untitled/models/testModel.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {

  TestModel? testModel;
  getData() async{
    testModel = await DioHelper().getSuccessData();
    setState(() {
      isLoading = false;
    });
  }
  bool? isLoading = true;
  @override
  void initState() {

    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isLoading!
            ?const CircularProgressIndicator()
            : Image.network(testModel!.model![0].image!),
        Text(
          testModel!.model![0].title!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );


  }
}
