import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('FlipCard',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(),
          ),
          Expanded(
            flex: 4,
            child: Card(
              elevation: 0.0,
              margin: const EdgeInsets.all(10),
              color: const Color(0x00000000),
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                speed: 1000,
                onFlipDone: (status) {
                  print(status);
                },
                front: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Text('User Name',style: TextStyle(fontSize: 18,color: Colors.white)),
                      const SizedBox(height: 15,),
                      const Text('XXXX XXXX XXXX XXXX',style: TextStyle(fontSize: 18,color: Colors.white)),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Text('Date:',style: TextStyle(fontSize: 18,color: Colors.white)),
                          SizedBox(width: 15,),
                          Text('MM/YY',style: TextStyle(fontSize: 18,color: Colors.white)),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Name',style: TextStyle(fontSize: 18,color: Colors.white)),
                          SizedBox(width: 15,),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                back: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [ BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),],
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 25,),
                      Container(
                        height: 60,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width/1.4,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 15,),
                          const Text('No.',style: TextStyle(fontSize: 18,color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ),
          Expanded(
            flex: 3,
            child: Container(),
          ),
        ],
      ),
    );
  }
}