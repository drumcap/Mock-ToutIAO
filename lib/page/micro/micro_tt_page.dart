import 'package:flutter/material.dart';


class MicroTTPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MicroTTPageState();
  }

}

class MicroTTPageState extends State<MicroTTPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('내 마이크로 헤드 라인',style: TextStyle(color: Colors.black,fontSize: 18),),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          Icon(Icons.person_add,color: Colors.blue,),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          Container(
            height: 70,
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.text_fields,color: Colors.blue,),
                    Text(
                      "텍스트",
                      style: TextStyle(fontSize: 14,color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.image,color: Colors.green,),
                    Text(
                      "그림",
                      style: TextStyle(fontSize: 14,color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey,
                  width: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.text_fields,color: Colors.blue,),
                    Text(
                      "비디오",
                      style: TextStyle(fontSize: 14,color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
        ],
      ),
    );
  }
}