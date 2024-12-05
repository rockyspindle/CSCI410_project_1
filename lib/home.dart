import 'package:flutter/material.dart';
 import 'germany.dart';
 import 'france.dart';
 import 'qatar.dart';

class Home extends StatefulWidget {
  const Home({Key?key}):super(key:key);

  @override
  State<Home>createState() =>_HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FreeBird"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 30,),
           SizedBox(width: double.infinity,height: 60,
            child: ElevatedButton(onPressed: () {Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Germany())
            );}, child: const Align(
              alignment: Alignment.centerLeft,
              child: Text("🇩🇪Germany",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.left,
              ),
                ),
            )
          ),
          const SizedBox(height: 5,),
          SizedBox(width: double.infinity,height: 60,
              child: ElevatedButton(onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const France())
              );}, child: const Align(
                alignment: Alignment.centerLeft,
                child: Text("🇫🇷France",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ),
              )
          ),
          const SizedBox(height: 5,),
          SizedBox(width: double.infinity,height: 60,
              child: ElevatedButton(onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Qatar())
              );}, child: const Align(
                alignment: Alignment.centerLeft,
                child: Text("🇶🇦Qatar",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ),
              )
          ),
          const SizedBox(height: 5,),
        ],),
      ),
    );
  }
}
