//無料漫画カード

import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardFree extends BaseCored {
  @override
  _CardFreeState createState()=> _CardFreeState();
}
//ブックリスト
const BOOK_LIST=[
  {"title":"金子金子の家計簿","cover":"https://d205c5ezx6yg6v.cloudfront.net/pubridge/BT0000650734/001/thumbnail.jpg","price":"待つと無料"},
  {"title":"いつかティファニーで朝食を","cover":"https://d205c5ezx6yg6v.cloudfront.net/shinchosha/shincho00000005/001/thumbnail.jpg","price":"待つと無料"},
  {"title":"セーラーゾンビ","cover":"https://d205c5ezx6yg6v.cloudfront.net/heors/heros0000038/001/thumbnail.jpg","price":"待つと無料"},
  {"title":"外道主義","cover":"https://d205c5ezx6yg6v.cloudfront.net/pubridge/BT0000649719/001/thumbnail.jpg","price":"待つと無料"},
  {"title":"金子金子の家計簿","cover":"https://d205c5ezx6yg6v.cloudfront.net/pubridge/BT0000650734/001/thumbnail.jpg","price":"待つと無料"},
  {"title":"金子金子の家計簿","cover":"https://d205c5ezx6yg6v.cloudfront.net/pubridge/BT0000650734/001/thumbnail.jpg","price":"待つと無料"},
];

class _CardFreeState extends BaseCoredState{

  @override
  bottomContent() {
    return Expanded(child: Container(
      margin: EdgeInsets.only(top:10),
      child: Column(
        children: <Widget>[
          //高さを取る
           Expanded(child: _bookList()),
          Padding(padding: EdgeInsets.only(bottom: 20),
            child: _bottomBottom(),)
        ],
      ),
    ),);
  }

 @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle("無料漫画");
  }
  @override
  Widget subTile(String title) {
    // TODO: implement subTile
    return super.subTile("待つと無料で読める漫画");
  }

  _bookList() {
    //網格レイアウト
    //crossAxisCount->行ごとに表示する数
     return GridView.count(crossAxisCount: 3,
       mainAxisSpacing: 10,//垂直item間の距離
       crossAxisSpacing: 15,//水平item間の距離
       childAspectRatio: 0.46,//長さと幅の比率
       padding: EdgeInsets.only(left: 20,right: 20),
       children: BOOK_LIST.map((item){
         return _item(item);
       }).toList(),
     );
  }

  _bottomBottom() {
    //FractionallySizedBox　横か、高さ最大限にする
    return FractionallySizedBox(
      widthFactor: 1,
        child:Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child:  RaisedButton(
          onPressed: (){},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.only(top: 13,bottom: 15),
          color: Colors.blue,
          child: Text(
            '待つと無料漫画をもっと見る',
            style:TextStyle(color: Colors.white),
          ),
        ),)
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          //絶対位置
          Stack(
            //アイコンの真ん中寄せ
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                '${item["cover"]}',fit: BoxFit.cover,),
              Container(
                width: 30,
                  height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38
                ),
                child: Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  width: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black54),
                    child: Text(
                      "${item['price']}",
                      style: TextStyle(color: Colors.white,fontSize: 10 ),
                    ),
                  ))
            ],
          ),
          Padding(padding: EdgeInsets.only(top:10),
          child: Text(item["title"],
          maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),)
        ],
      ),
    );
  }
}