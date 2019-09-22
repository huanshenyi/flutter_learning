import 'package:beauty_flutter/content_page.dart';
import 'package:flutter/material.dart';
//footerナビゲーター
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  //final->定数
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final ContentPagerController _contentPagerController = ContentPagerController();
  @override
  Widget build(BuildContext context) {
    // Scaffold->ページレイアウトの配置(footerナビゲーター、ヘットのアプリバー、浮いているボタンなど既に入ってる)
    return Scaffold(
      //Container->コンテナ(背景、ボーダーなど)
      body:Container(
        //decoration->コンテナのスタイル
        decoration: BoxDecoration(
          //色のグラデーション
          gradient: LinearGradient(colors: [
            Color(0xffedeef0),
            Color(0xffe6e7e9)
          ],
            //グラデーションの位置
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        //content_page.dartのインスタンス
        child:ContentPager(
          contentPagerController: _contentPagerController,
            onPageChanged: (int index){
              setState(() {
                _currentIndex=index;
              });
            }
        ),
      ),
        //bottomナビゲーションバーの実現
        bottomNavigationBar:BottomNavigationBar(
            currentIndex: _currentIndex,
            //tapイベント
            onTap: (index){
             //tap変換すれば、内容も指定のところに移動
             _contentPagerController.jumpToPage(index);
             //ステータスを変換
              setState(() {
                _currentIndex=index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
          _bottomItem("人気", Icons.whatshot,0),
          _bottomItem("無料", Icons.sentiment_very_satisfied,1),
          _bottomItem("セール", Icons.shopping_basket,2),
          _bottomItem("ホーム", Icons.home,3),
        ]),
    );
  }
  //bottomナビゲーションをパッケージ化する
  _bottomItem(String title, IconData icon, int index){
    return BottomNavigationBarItem(
      //iconは一般iconと選択中のicon
      icon: Icon(
        icon,
        color: _defaultColor,
      ),
      activeIcon: Icon(
        icon,
        color: _activeColor,
      ),
      title: Text(title, style: TextStyle(color: _currentIndex != index ? _defaultColor : _activeColor),)
    );
  }
}
