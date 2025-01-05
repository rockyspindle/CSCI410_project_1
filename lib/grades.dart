import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//main URL for REST pages
const String _baseUrl = 'hadilotfiflutter.kesug.com';

//class
class Grade {
  int _cid;
  String _name;
  int _grade;
  double _letterGrade;

  Grade(this._cid, this._name, this._grade, this._letterGrade);

  @override
  String toString() {
    return 'CID: $_cid Name: $_name Grade: $_grade Letter Grade: $_letterGrade';
  }
}

//list to hold products
List<Grade> _grades = [];


// searches for a single product using pid
void GetStudent(Function(String text) update, int studentId) async {
  try {
    final url = Uri.http(_baseUrl, 'getGrades.php', {'student': '$studentId'});
    final response = await http.get(url)
      .timeout(const Duration(seconds: 30));
    _grades.clear();
    if(response.statusCode == 200) {
      final jsonResponse = convert.jsonDecode(response.body);
      var row = jsonResponse[0];
      Grade g = Grade(row['cid'], row['name'], int.parse(row['grade']), row['letter_grade']);
    }
  }
  catch(e) {
    update("cant load data");
  }
}

class ShowGrades extends StatelessWidget {
  const ShowGrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: _grades.length,
      itemBuilder: (context, index) => Column(children: [
        const SizedBox(height: 10,),
        Container(
          color: index % 2 == 0? Colors.amber: Colors.cyan,
          padding: const EdgeInsets.all(5),
          width: width * 0.9, child: Row(children: [
            SizedBox(width: width * 0.15),
            Flexible(child: Text(_grades[index].toString(), style: TextStyle(fontSize: width * 0.045), ))
        ],),
        )
      ],),
    );
  }
}