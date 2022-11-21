import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('b_page'),
      ),
      body: Center(
        child: ElevatedButton( //呼叫按鈕
          child: Text('back'), //按鈕中的字串
          onPressed: () { //按下按鈕時呼叫程式碼
            Navigator.pop(context); //退出此頁達到回到效果
          },
        ),
      ),
    );
  }
}
