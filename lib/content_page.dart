import 'package:beauty_flutter/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
  // 構造関数の宣言
  const ContentPager({Key key, this.onPageChanged, this.contentPagerController})
  // 初期化リスト
      : super(key: key);
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(
    //表示するswapperの全コンテナ大きさに対する比率
      viewportFraction: 0.8
  );
  static List<Color>_colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.teal,
  ];
 @override
  void initState() {
    if(widget.contentPagerController != null){
      widget.contentPagerController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //上にあるバーをインポート
        CustomAppBar(),
        //appBar
        //Expanded->スワイプコンテンツを真ん中の高さのある位置を取る,高さなけれエラーが出る
        //PageView->左右の移動を可能に
        Expanded(child: PageView(
          onPageChanged: widget.onPageChanged,
          controller: _pageController,
          children: <Widget>[
             _wrapItem(0),
             _wrapItem(1),
             _wrapItem(2),
             _wrapItem(3),
          ],
        ))
      ],
    );
  }
  Widget _wrapItem(int index){
    // Padding余白
    return Padding(padding: EdgeInsets.all(10),
     child: Container(decoration: BoxDecoration(color: _colors[index]),
     ),
    );
  }
  //ステータスバーの中毒状態
  //ダークの中毒状態,darkでstatusBarColorを修正
  _statusBar(){
   SystemUiOverlayStyle uiOverlayStyle=SystemUiOverlayStyle(
     systemNavigationBarColor: Color(0xFF000000),
     systemNavigationBarDividerColor: null,
     statusBarColor: Colors.transparent,
     systemNavigationBarIconBrightness: Brightness.light,
     statusBarIconBrightness: Brightness.dark,
     statusBarBrightness: Brightness.light,
   );
  SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}
//コンテンツエリアのコントローラー
class ContentPagerController{
  PageController _pageController;
  void jumpToPage(int page){
    //dartのテクニカル:安全の呼び出し,
    _pageController?.jumpToPage(page);
  }
}
