import 'package:blog_app/todo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Denemelik blog app",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog uygulaması"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {

  String blogYazisi = 'Bloga Hoşgeldiniz';

  martGoster(){
    setState(() {
      blogYazisi = 'Deneme için';
    });
  }
  nisanGoster(){
    setState(() {
      blogYazisi = 'Nisan deneme';
    });
  }
  mayisGoster(){
    setState(() {
      blogYazisi = 'Mayis göster';
    });
  }
  ToDoApp(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ToDoApp()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(blogYazisi),
            ElevatedButton(
              onPressed: martGoster, 
              child: Text("Mart yazısı"),
            ),
            ElevatedButton(
              onPressed: nisanGoster, 
              child: Text("Nisan yazısı"),
            ),
            ElevatedButton(
              onPressed: mayisGoster, 
              child: Text("Mayıs yazısı"),
            ),
            ElevatedButton(
              onPressed: ToDoApp, 
              child: Text("ToDo Uygulaması"),
            ),
          ],
        ),
      ),
    );
  }
}