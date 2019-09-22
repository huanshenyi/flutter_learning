import 'package:flutter/material.dart';

//カードのベースクラス
class BaseCored extends StatefulWidget {
  @override
  BaseCoredState createState() => BaseCoredState();
}

class BaseCoredState extends State<BaseCored> {
  //文字色変数
  Color subTitleColor = Colors.grey;
  //ボトム文字色
  Color bottomTitleColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    // PhysicalModel->外見を修正(円角)
    return PhysicalModel(color: Colors.transparent,
    borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,//アンチエイリアス
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            topContent(),
            bottomContent(),
          ],
        ),
      ),
    );
  }

  topContent() {
    // padding,column,row->flutterのレイアウト
    return Padding(padding: EdgeInsets.only(left: 20,top: 26,bottom: 20),
    child: Column(
      //内容の並び方(今は左側に寄せる)
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          //下寄せるの並び
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            topTitle(""), topTitle2()
          ],
        ),
        subTile("")
      ],
    ),
    );
  }
  bottomContent(){
    return Container();
  }

  Widget subTile(String title) {
    return Padding(padding: EdgeInsets.only(top:5),
    child: Text(
      title,
      style: TextStyle(fontSize: 13, color: subTitleColor),),
    );
  }

  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),);
  }

  topTitle2() {
    return Container();
  }

  bottomTitle(String title) {
    return Text(title, style: TextStyle(fontSize: 12,color:bottomTitleColor),);
  }
}



