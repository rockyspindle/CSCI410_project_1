import 'package:flutter/material.dart';
import 'grades.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _load = false; // used to show products list or progress bar

  void update(bool success) {
    setState(() {
      _load = true; // show product list
      if (!success) { // API request failed
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('failed to load data')));
      }
    });
  }


  @override
  void initState() {
    // update data when the widget is added to the tree the first tome.
    // updateProducts(update);
    super.initState();
  }

  final TextEditingController _controllerID = TextEditingController();
  String _grades = '';

  @override
  void dispose() {
    _controllerID.dispose();
    super.dispose();
  }

  //update info or display error
  void updateText(String text) {
    setState(() {
      _grades = text;
    });
  }

  //called when user clicks on the call function
  void getGrade() {
    try {
      int student = int.parse(_controllerID.text);
      GetStudent(updateText, student);
    }
    catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('wrong arguments')));

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Grades'),
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10,),
        SizedBox(width: 200, child: TextField(controller: _controllerID, keyboardType: TextInputType.number,
          decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Enter ID'),),),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: getGrade, child: const Text('Search', style: TextStyle(fontSize: 16),),),
        const SizedBox(height: 10,),
        Center(child: SizedBox(width: 200, child: Flexible(child: Text(_grades,
          style: const TextStyle(fontSize: 18),)),),)
      ],),),
    );
  }
}