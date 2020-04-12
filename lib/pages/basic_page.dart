import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '王羲之';
  final String _title = '兰亭集序';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://attach.bbs.miui.com/forum/201205/10/214931rrrz1kjg5xrkr5nr.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.blueAccent[400].withOpacity(0.5), 
            BlendMode.hardLight,
          )
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            '《$_title》——$_author,永和九年，岁在癸丑，暮春之初，会于会稽山阴之兰亭，修禊事也。群贤毕至，少长咸集。此地有崇山峻岭，茂林修竹；又有清流激湍，映带左右，引以为流觞曲水，列坐其次。虽无丝竹管弦之盛，一觞一咏，亦足以畅叙幽情。',
            textAlign: TextAlign.left,
            style: _textStyle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          RichText(
            text: TextSpan(
                text: '李白',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 24.0,
                ),
                children: [
                  TextSpan(
                    text: '床前明月光',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ]),
          ),
          Container(
            height: 200.0,
            width: 300.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.pool,
                    size: 32.0,
                    color: Colors.white,
                  ),
                  // color: Color.fromRGBO(3, 23, 231, 1.0),
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  margin: EdgeInsets.all(20.0),
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(
                        color: Colors.blue,
                        width: 3.0,
                        style: BorderStyle.solid,
                      ),
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(30.0),
                      //   bottomLeft: Radius.circular(30.0),
                      // ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5.0, 5.0),
                          color: Colors.deepPurpleAccent,
                          blurRadius: 10.0, //模糊度
                          spreadRadius: -3.0, //扩散大小
                        ),
                      ],
                      shape: BoxShape.circle,
                      //镜像渐变
                      // gradient: RadialGradient(
                      //   colors: [
                      //     Colors.red[700],
                      //     Colors.black,
                      //   ],
                      // ),
                      //线性渐变
                      gradient: LinearGradient(
                        colors: [
                          Colors.red[700],
                          Colors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
