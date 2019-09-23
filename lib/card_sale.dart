//セールのカード
import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/material.dart';

class CardSale extends BaseCored{
  @override
  _CardSaleState createState()=> _CardSaleState();
}
class _CardSaleState extends BaseCoredState{
  @override
  void initState() {
    bottomTitleColor = Colors.blue;
    super.initState();
  }

  @override
  topContent() {
     return Column(
       children: <Widget>[
         Container(
           padding: EdgeInsets.only(left: 66,right: 66,top: 36,bottom: 30),
           decoration: BoxDecoration(color: Color(0xfffffcf7)),
           child: Container(
             decoration: BoxDecoration(
               boxShadow: [
                 //影をつける
                 BoxShadow(
                   color: Colors.grey,
                   blurRadius: 20,//グラデーション半径
                   offset: Offset(
                       0,//水平
                       10//垂直
                   ))
               ]
             ),
             child: Image.network("https://d205c5ezx6yg6v.cloudfront.net/pubridge/BT0000655254/001/cover.jpg"),
           ),
         ),
         Container(
           padding: EdgeInsets.only(left: 20,top: 15, bottom: 15,right: 20),
           decoration: BoxDecoration(color: Color(0xfff7f3ea)),
           //左右のレイアウト
           child: Row(
             children: <Widget>[
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text("スキップ・ビート！",style: TextStyle(fontSize: 18,color: Color(0xff473b25)),
                   ),
                   Padding(padding: EdgeInsets.only(top: 5),
                   child: Text("仲村佳樹",
                     style: TextStyle(fontSize: 13,color: Color(0xff7d725c)),
                    ),
                   )
                 ],
               ),
               Container(
                 margin: EdgeInsets.only(left: 20),
                 padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   //色のグラデーション
                   gradient: LinearGradient(colors: [
                     Color(0xffd8bc82),
                     Color(0xffecd9ae)
                   ]),
                   
                 ),
                 child: Text("セール中",style: TextStyle(color: Color(0xff4f3b1a),fontSize: 13),
                 ),
               )
             ],
           ),
         )
       ],
     );
  }
  @override
  bottomContent() {
    return Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,//要素の左寄せ
      mainAxisAlignment: MainAxisAlignment.spaceAround,//平均分散
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network('http://www.devio.org/io/flutter_beauty/double_quotes.jpg',
              height: 26,
              width: 26,
            ),
            Text('お洒落ひとつせず、日々バイトに精出す少女・キョーコの秘密。それは...')
          ],
        ),
        ),
        bottomTitle("無料試読 >")
      ],
    ),
    );
  }
}
