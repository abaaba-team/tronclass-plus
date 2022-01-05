import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Courses.dart';
import 'package:tronclass_plus/main.dart';
import 'package:tronclass_plus/main_page.dart';

class Info extends StatefulWidget{
  const Info({Key? key}) : super(key :key);
  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150.0,
        backgroundColor: Colors.amber,
        title: Text(
          '$indexx (1101) Courses information',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          child:const Icon(
            Icons.arrow_back_ios_rounded,color: Colors.black,
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: const Text("information",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Container()
              ],
            ),
          ],
        ),
      ),

    );
  }
}