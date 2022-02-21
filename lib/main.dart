import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Drewar"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage("assets/new.jpg"),
                ),
                accountName: Text("Palash Roy"),
                accountEmail: Text("palashtpi21@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("this is one Item"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("this is two Item"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.sms_sharp),
                title: Text("this is three Item"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("this is four Item"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("this is five Item"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(

            children: <Widget>[
              RaisedButton(

                child: Text("On"),
                onPressed: (){

                },
              ),
              RaisedButton(
                child: Text("Off"),
                onPressed: (){
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
