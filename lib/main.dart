import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      );
  }
}





class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 150,
            width: 400,
            color: Colors.red,
            child: Column(
              children: [
                Text("Clothes", style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow
                ),),
                SizedBox(
                  height: 16,
                ),

                Text("მეტის სანახავად გადადით შემდეგ გვერდზე", style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),),

                Container(
                  padding: EdgeInsets.only(top: 30, left: 200),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherPage1()));
                      },
                    child: Text("Next", style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),),),
                ),
                  ],
            ),
          ),
          Container(
            height: 150,
            width: 400,
            color: Colors.yellow,
            margin: EdgeInsets.all(25),
            child: Column(
              children: [
                Text("Clothes list", style: TextStyle(
                    fontSize: 30,
                    color: Colors.red
                ),),
                SizedBox(
                  height: 16,
                ),
                Text("მეტის სანახავად გადადით შემდეგ გვერდზე", style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue
                ),),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 200),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtherPage2()));
                    },
                    child: Text("Next",style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),),),
                ),
              ],
          ),),
        ],
      ),
    );
  }
}

class OtherPage1 extends StatelessWidget {
  const OtherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clothes"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            child: Image( image: NetworkImage("https://cdn.shopify.com/s/files/1/0095/9954/9540/products/Artboard5_8fe93ebe-f4aa-4efc-8544-dba6b0c07cfd_600x.png?v=1670909874"),
            ),
          ),
        ],
      ),
    );
  }
}



class OtherPage2 extends StatelessWidget {
  var inputController = TextEditingController();
  List<String> products = [];

  List<Widget> productListView() {
    List<Widget> prods = [];



    return prods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clothes list"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: SingleChildScrollView(
              child: Column(
                children: products.map((e) {
                  return Text(e);
                }).toList(),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(32),
                height: 50,
                width: 250,
                child: TextField(
                  controller: inputController,
                ),
              ),
              TextButton(onPressed: () {
                ( () {
                  products.add(inputController.text);
                  inputController.clear();
                });
              }, child: Text("Add",style: TextStyle(
                     fontSize: 18,
                   color: Colors.black
    ),),),
            ],
          ),
        ],
      ),
    );
  }
}

