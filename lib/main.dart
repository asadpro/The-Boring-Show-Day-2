import 'package:flutter/material.dart';
import 'package:the_boring_show_day_2/article.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    List<Article> _article = articles;
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('The boring show'),
              centerTitle: true,
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                await Future.delayed(
                  Duration(seconds: 2),
                );
                setState(() {
                  _article.removeAt(0);
                });
              },
              child: SingleChildScrollView(
                child: Column(children: _article.map(_buildItem).toList()),
              ),
            )),
      ),
    );
  }

  Widget _buildItem(Article article) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.red),
      onTap: () {},
      child: ExpansionTile(
        title: Text(
          article.text,
          style: TextStyle(fontSize: 23.9),
        ),
        subtitle: Text(
          article.domain.toString(),
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                article.commentsCount.toString(),
                textScaleFactor: 2.0,
              ),
              IconButton(
                onPressed: () {
                  launch('https://flutterawesome.com/');
                },
                icon: Icon(Icons.launch),
              )
            ],
          )
        ],
      ),
    );
  }
}
