import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MENU',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'メニュー'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.50),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: Text('メニュー', style: TextStyle(fontSize: 25),),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            Container(
              width: 150,
              height: 80,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                child:  Text('通知' ,style: TextStyle(fontSize: 25),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: (){},
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 150,
              height: 80,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                child: const Text('ログアウト', style: TextStyle(fontSize: 22),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: (){
                  showCupertinoDialog(
                    context: context,
                    builder: (context){
                      return CupertinoAlertDialog(
                        title: Text('ログアウト'),
                        content: Text('ログアウトしますか？'),
                        actions: [
                          CupertinoDialogAction(
                            isDestructiveAction: true,
                            child: Text('キャンセル'),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('ログアウト'),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 150,
              height: 80,
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                child: const Text('リセット', style: TextStyle(fontSize: 25),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
