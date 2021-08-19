import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*void main() => runApp(
    MyList2(items: List<String>.generate(1000, (index) => 'item $index')));*/
void main() => runApp(MyApp4());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Text widget",
      // home: RandomWords(),
      home: Scaffold(
        body: Center(
          child: Text(
            "hello jspang 测试测试测试测试测试测试测试测试测试测试测试测试测试测试",
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Startup Name Generator'),
        ),
        body: _buildSuggestions());
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

class FooWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'put your text here',
      home: Scaffold(
        body: Center(
          child: Image.network(
            'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2458696988,2288615185&fm=26&gp=0.jpg',
            width: 200.0,
            height: 150.0,
          ),
        ),
      ),
    );
  }
}

class BarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BarWidgetState();
  }
}

class _BarWidgetState extends State<BarWidget> {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('i = $i'),
        RaisedButton(
          onPressed: () {
            setState(() {
              ++i;
            });
          },
          child: Text('click'),
        )
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var flatBtn = FlatButton(
      onPressed: () => print('FlatButton pressed'),
      child: Text('BUTTON'),
    );
    var raisedButton = RaisedButton(
      onPressed: () => print('RaisedButton pressed'),
      child: Text('BUTTON'),
    );
    return raisedButton;
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Text(
              "Hello JsPang",
              style: TextStyle(fontSize: 40.0),
            ),
            alignment: Alignment.center,
            width: 500.0,
            height: 400.0,
            //color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.lightBlue,
                  Colors.greenAccent,
                  Colors.purple
                ]),
                border: Border.all(width: 2.0, color: Colors.red)),
          ),
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3809097439,4212756421&fm=26&gp=0.jpg",
              //scale: 1.0,
              fit: BoxFit.cover,
              color: Colors.lightBlue,
              colorBlendMode: BlendMode.darken,
            ),
            color: Colors.lightBlue,
            width: 300.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.access_alarm_rounded),
              title: Text('access_alarm_rounded'),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('bar_chart'),
            ),
            ListTile(
              leading: Icon(Icons.wc_rounded),
              title: Text('wc_rounded'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Container(height: 200.0, child: MyList()),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.greenAccent,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}

class MyList2 extends StatelessWidget {
  final List<String> items;

  MyList2({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Widget'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('GridView Widget'),
          ),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10.0),
            children: [
              Image.network(
                  'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3407738849,4166846182&fm=26&gp=0.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437233&di=ecaaec947f890006bdfa339cca80fc54&imgtype=0&src=http%3A%2F%2Fc.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fa044ad345982b2b7dabd6f0633adcbef77099bd5.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437233&di=928f265bed31884ef064f17f982482b3&imgtype=0&src=http%3A%2F%2Fpic31.nipic.com%2F20130805%2F9252150_163448180306_2.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437233&di=8819d60ff53b4130879b86630245c325&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Fback_pic%2F04%2F77%2F72%2F2158afb72ad0b8a.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437233&di=55ad8402b63fab696754cbc395b9f3d0&imgtype=0&src=http%3A%2F%2Fpic15.nipic.com%2F20110727%2F2457331_211714057336_2.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437231&di=8e5ee8e6fea62596119ae817fb12987a&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F17%2F11%2F14%2F410e8969e0b2fde8446d81535e8344ad.jpg%2521%2Ffwfh%2F804x536%2Fquality%2F90%2Funsharp%2Ftrue%2Fcompress%2Ftrue',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437231&di=892fdc1d09d049ac1c932c7ea1dd183c&imgtype=0&src=http%3A%2F%2Fdownload.5tu.cn%2Fattachments%2Fmonth_1310%2F1310080939f7529f76d3b9d6cb.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437230&di=a15f032ac314d503e321fe6e638de89e&imgtype=0&src=http%3A%2F%2Fpic26.nipic.com%2F20130105%2F9356147_185636235000_2.jpg',
                  fit: BoxFit.cover),
              Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604039437230&di=9a032fd249e39f28db4542f13681012a&imgtype=0&src=http%3A%2F%2Ffile03.16sucai.com%2F2016%2F10%2F1100%2F16sucai_v20161029128_675.JPG',
                  fit: BoxFit.cover),
            ],
          )),
    );
  }
}

class MyApp7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: [
            RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: new Text('红色按钮')),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                color: Colors.orangeAccent,
                child: new Text('黄色按钮'),
              ),
            ),
            RaisedButton(
                onPressed: () {},
                color: Colors.pinkAccent,
                child: new Text('粉色按钮'))
          ],
        ),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('I am JSPang'),
            ),
            Expanded(
              child: Center(
                child: Text('my website is jspang.com'),
              ),
            ),
            Center(
              child: Text('I love coding'),
            )
          ],
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://bkimg.cdn.bcebos.com/pic/9a504fc2d5628535a233d1b29aef76c6a6ef6355?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg'),
          radius: 100.0,
        ),
        Positioned(
          top: 40.0,
          left: 70.0,
          child: Text('🌏杰出青年'),
        ),
        Positioned(
          bottom: 20.0,
          right: 75.0,
          child: Text('金三胖'),
        ),
      ],
    );
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              '吉林省吉林市昌邑区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('技术胖:1513938888'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlueAccent,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              '北京市海淀区中国科技大学',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('胜宏宇:1513938888'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlueAccent,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              '河南省濮阳市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('JSPang:1513938888'),
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlueAccent,
            ),
          ),
          Divider(),
        ],
      ),
    );
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
