
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  String name = "Mantequilla el último de los Mexicanos!";
  String name2 = "";
  String name3 = "";

  @override
  initState(){
    super.initState();
    getData();
    getData2();
  }

  getData() async{
    name2 = await getDummyName();
    setState(() {

    });
  }

  getData2(){
    getDummyName().then((value){
      name3 = value;
      setState(() {

      });
    });
  }

  String getFullName(){
    return "Ramón Perez";
  }

  Future<String> getDummyName() async{
    return Future.delayed(Duration(seconds: 3), (){
      return "Josefina Montes";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(getFullName(),),
            Text(name2),
            Text(name3),
            FutureBuilder(
              future: getDummyName(),
              builder: (BuildContext context, AsyncSnapshot snap){

                if(snap.hasData){
                  return Text("::: ${snap.data}");
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
