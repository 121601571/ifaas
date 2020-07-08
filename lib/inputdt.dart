import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'main.dart';
import 'piepic.dart';



class inputv extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<inputv> {
  var app1 = NumericComboLineBarChart.withSampleData();
  List<DropdownMenuItem<String>> sortItems = [];
  var selectItemValue;
  final TextEditingController _textController = new TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    sortItems.add(DropdownMenuItem(value: 'type1', child: Text('type1')));
    sortItems.add(DropdownMenuItem(value: 'type2', child: Text('type2')));
    sortItems.add(DropdownMenuItem(value: 'type3', child: Text('type3')));
    selectItemValue = 'type1';
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // app1,
//                Row(
//                  children: <Widget>[
//                    //TextField(),
//                    gettf(),
//                    //getList(),
//                  ],
//                )
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width:200,
                    child: gettf(),
                  ),
                  getList(),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('OK'),
                    )
                  ],
                )


              ],
            )
        ),


      );
  }

  getList() {
    return DropdownButton(
      value:    selectItemValue
      ,
      items: sortItems,
      onChanged: (T){
        setState(() {
          selectItemValue=T;
        });
      },
    );
  }

  gettf(){
    return new Container(
      margin: const EdgeInsets.all(10.0),
      child: new Material(
        type: MaterialType.canvas,
        shape: new StadiumBorder(
            side: new BorderSide(
                color: Colors.green,
                style: BorderStyle.solid
            )
        ),
        child: new TextField(
          autofocus: true,//
          keyboardType: TextInputType.number,
          controller:_textController,
          decoration: new InputDecoration(
              contentPadding: new EdgeInsets.all(15.0),
              border: InputBorder.none
          ),
          onChanged:(String content){
            print(content);//
          },
        ),
      ),
    );
  }

  _gotoc1(){
    var app1 = NumericComboLineBarChart.withSampleData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => app1),
    );
  }

  _gotoc2(){
    var app1 = DonutAutoLabelChart.withSampleData();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => app1),
    );

  }

  _gotoc3(){


  }

}