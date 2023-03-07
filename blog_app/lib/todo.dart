import 'package:flutter/material.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo Uygulaması",
      home: AnaHat(),
    );
  }
}

class AnaHat extends StatelessWidget {
  const AnaHat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listem"),
      ),
      body: AnaEkranTwo(),
    );
  }
}

class AnaEkranTwo extends StatefulWidget {
  const AnaEkranTwo({super.key});

  @override
  State<AnaEkranTwo> createState() => _AnaEkranTwoState();
}

class _AnaEkranTwoState extends State<AnaEkranTwo> {

  TextEditingController textEditingController = TextEditingController();
  List alisverisListesi = [];
 
  elemanEkle(){
    setState(() {
      alisverisListesi.add(textEditingController.text);
    });
  }
  elemanCikar(){
    setState(() {
      alisverisListesi.remove(textEditingController.text);
      textEditingController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: alisverisListesi.length,
              itemBuilder: ((context, index) => ListTile(
                title: Text(alisverisListesi[index]),
                )),
            ),
          ),
          TextField(
            controller: textEditingController,
          ),
          ElevatedButton(
            onPressed: elemanEkle(), 
            child: Text("Ekle"),
          ),
          ElevatedButton(
            onPressed: elemanCikar(), 
            child: Text("Çıkar"),
          ),
        ],
      ),
    );
  }
}