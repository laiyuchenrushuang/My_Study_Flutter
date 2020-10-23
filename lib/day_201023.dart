import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Widget子类中的字段往往都会定义为"final"

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        //列表项的类型是 <Widget>
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null 会禁用 button
          ),
          // Expanded expands its child to fill the available space.
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是UI呈现的“一张纸”
    return new Material(
      // Column is 垂直方向的线性布局.
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example titleExample titleExample titleExample titleExample titleExample title',

              textAlign: TextAlign.center, //文字在布局中的位置 left center...
              textScaleFactor: 2, //放大倍数
              softWrap: true, //是否自动换行
              textDirection: TextDirection.rtl, //文本方向  rtl rtr
              overflow: TextOverflow.ellipsis, //溢出显示 clip剪裁fade 渐隐ellipsis省略号
              maxLines: 2, //文本行数
            ),
          ),
          new Expanded(
            child: new Center(
              child: new Text(
                'Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decorationColor: Colors.amber,
                  height: 1,
                  //字体离顶部的高度 没得width的
                  //线的颜色
                  //lineThrough删除线   overline文字上面显示线   underline文字下面显示线
                  // decoration: TextDecoration.lineThrough,
                  //solid实现 double两条 dashed dotted虚线 wavy 波浪线
                  decorationStyle: TextDecorationStyle.wavy,
                  //单行字间隔
                  wordSpacing: 1.0,
                  //行与行的距离
                  letterSpacing: 2.0,
                  //字体颜色
                  color: Colors.blue,
                  //组件背景
                  backgroundColor: Colors.black,
                  //字体格式
                  fontFamily: "MicroSoft YaHei",
                  //字符间的距离
                  fontStyle: FontStyle.italic,
                  //斜体
                  fontWeight: FontWeight.bold,
                  //字体大小
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new MyScaffold(),
  ));
}
