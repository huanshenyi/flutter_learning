import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //動的に上までの距離を取得 @https://coding.imooc.com/learn/list/321.html
    double paddingTop = MediaQuery.of(context).padding.top;
    return Container(
      //外部の辺距
      margin: EdgeInsets.fromLTRB(20, paddingTop+10, 20, 5),
      //内部の辺距
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: BoxDecoration(
        //丸めのライン
        borderRadius: BorderRadius.circular(19),color: Colors.white60
      ),
      //itemは左右にあるのでRowを使用
      child: Row(
        children: <Widget>[
          //左側のアイコン
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
            //横幅を取る
            child: Text("タイトル・著者を入力",
              style: TextStyle(fontSize: 15,color: Colors.grey),
            )),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Text('一覧',style: TextStyle(fontSize: 13,),
          )
        ],
      ),
    );
  }
}


