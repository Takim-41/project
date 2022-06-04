import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class dwTextField extends StatelessWidget {
  var school = <String>[];
  String selected_school = "Okulunuz";


  @override
  void initState() {
    school.add("Okulunuz");
    school.add("Akdeniz Üniversitesi");
    school.add("Boğaziçi Üniversitesi");
    school.add("Ege Üniversitesi");
    school.add("İstanbul Üniversitesi");
    school.add("Selçuk Üniversitesi");
  }
  //NormalTextField(InputDecoration decoration);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
         child: DropdownButton<String>(
          value: selected_school,
          items:school.map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
              value: value,

              child: Text(" $value", style: TextStyle(color:Colors.black, fontSize: 17),),
            );
          }).toList(),
          icon: Icon(Icons.arrow_drop_down,),
          iconSize: 26,
          isExpanded: true,
          underline: SizedBox(),
          onChanged: (String? selected_data){
            setState(() {
              selected_school= selected_data!;
            });
          },
         ),
         ),
        ],
        ),
    );
  }

  void setState(Null Function() param0) {}
}
