import 'package:flutter/material.dart';
import 'package:tronclass_plus/main.dart';
import 'package:tronclass_plus/search_bar.dart';
import 'package:tronclass_plus/config.dart';

import 'package:shared_preferences/shared_preferences.dart';

class PageFront extends StatefulWidget {
  const PageFront({Key? key}) : super(key: key);

  @override
  _PageFrontState createState() => _PageFrontState();
}

class _PageFrontState extends State<PageFront> {
  String stu_name = userName_;
  String stu_no = userNo_;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(29,32,37,1),
      body:Container(
        padding: EdgeInsets.all(20.0),
        child:Column(
          children: [
            Container(
              decoration: new BoxDecoration(
                border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                color:Color.fromRGBO(41,44,51,1),
                borderRadius:new BorderRadius.circular((20.0)),
              ),
              constraints: BoxConstraints(maxHeight: 50),
              child:
                  SearchField(context),
            ), //搜尋欄
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                  '哈囉!'+stu_name+'同學',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
              ),
            ), //系統招呼
            SizedBox(height: 20,),
            Container(
              height: 100,
              decoration: new BoxDecoration(
                border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                color:Color.fromRGBO(41,44,51,1),
                borderRadius:new BorderRadius.circular((5.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    minWidth: 200,
                    height: 70,
                    child: Text('掃描',style: TextStyle(fontWeight: FontWeight.bold),),
                    color: Colors.blue,
                    splashColor: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  FlatButton(
                    minWidth: 200,
                    height: 70,
                    child: Text('簽到',style: TextStyle(fontWeight: FontWeight.bold)),
                    color: Colors.green,
                    splashColor: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                  ),
                ],
              ),

            ), //掃描 簽到按鈕
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '最近造訪',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ), //最近造訪
            SizedBox(height: 15,),
            Container(
              height: 200,
              width: double.maxFinite,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: new BoxDecoration(
                      border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                      color:Color.fromRGBO(41,44,51,1),
                      borderRadius:new BorderRadius.circular((5.0)),
                    ),

                  ),

                  Container(
                    height: 200,
                    width: 200,
                    decoration: new BoxDecoration(
                      border: new Border.all(color:Color(0xFFF0000),width: 0.5),
                      color:Color.fromRGBO(41,44,51,1),
                      borderRadius:new BorderRadius.circular((5.0)),
                    ),

                  ),
                ],
              )
            ),
          ],
        )

      )
    );
  }
}
Widget SearchField(context){
  void searchDialog(context, value) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
            title: Text("搜尋 $value"),
            content: Text("無搜尋結果"),
            actions: [
              FlatButton(
                child: Text("重新搜尋"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ]
        )
    );
  }
    return TextField(
        decoration: InputDecoration(
          labelText: '輸入課程名稱或訪問碼',
          icon: Icon(Icons.search),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) => searchDialog(context, value)
    );
}
Scan(){
  return null;
}
checkin(){
  return null;
}
