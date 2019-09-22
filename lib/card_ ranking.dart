//ランキングページのカード
import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/material.dart';

class CardRanking extends BaseCored{
  @override
  _CardRankingState createState() => _CardRankingState();
}
class _CardRankingState extends BaseCoredState{
  @override
  bottomContent() {
    return Expanded(child: Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Color(0xfff6f7f9)),
      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.end,//水平右側
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.only(top: 20,left: 15,bottom: 10),
          child: Image.network("https://github.com/huanshenyi/Github-Actions-Test/blob/master/ra.PNG?raw=true")
          )),
         Container(
             alignment: AlignmentDirectional.center,//親クラスのレイアウトを書き直し
             child: Padding(padding: EdgeInsets.only(bottom: 20),
               child: bottomTitle("総合、急上昇の人気漫画ランキング"),
             ),
         ),
        ],
      ),
    ),);
  }
  @override
  topTitle(String title) {
    return super.topTitle("ランキング");
  }
 @override
  topTitle2() {
    return Padding(padding: EdgeInsets.only(bottom: 5),
    child: Text(
      "/ 総合",
      style: TextStyle(fontSize: 12),
    ),
    );
  }
  @override
  Widget subTile(String title) {
    return super.subTile("好きなマンんにいいねを付けましょう");
  }
}