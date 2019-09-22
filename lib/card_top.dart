import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// トップ内容
class CardTop extends BaseCored{
  @override
  _CardTopState createState() => _CardTopState();
}

class _CardTopState extends BaseCoredState{
  //親クラスのmethodを書き直し
  @override
  void initState() {
    // TODO: implement initState
    subTitleColor= Color(0xFFADD8E6);
    super.initState();
  }
  //カードの内容コンテナ
  @override
  bottomContent() {
    //高さをmaxにするためのExpanded
    return Expanded(child: Container(
      constraints: BoxConstraints.expand(),//boxを使用して親クラスの場所をいっぱいにする
      margin: EdgeInsets.only(top: 10),
     child: Image.network("https://github.com/huanshenyi/Github-Actions-Test/blob/master/123.PNG?raw=true",
       fit: BoxFit.cover,
     ),
    ));
  }
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle("トップページ");
  }
  @override
  Widget subTile(String title) {
    // TODO: implement subTile
    return super.subTile("もっとジャンル・カテゴリを探す >");
  }

}

