import 'package:flutter/material.dart';
class Trying extends StatefulWidget {
  const Trying({Key? key}) : super(key: key);

  @override
  State<Trying> createState() => _TryingState();
}

class _TryingState extends State<Trying>
    //with SingleTickerProviderStateMixin
  //late TabController controller;
    {
  // void initState(){
  //   super.initState();
  //   TabController _TabController= TabController(length: 3, vsync: this);
  // }

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
     length: 3,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 110,),
            Container(
              height: 300,
              width: double.infinity,
              child: TabBar(
                  tabs: [
                Tab(text: "1111",icon: Icon(Icons.add),),
                Tab(text: "2222",icon: Icon(Icons.add),),
                Tab(text: "3333",icon: Icon(Icons.add),),
              ]),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: TabBarView(
                  children: [
                Text("da",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900,color: Colors.black),),
                Text("datdsda"),
                Text("datadssssss"),
              ]),
            ),
          ],
        ),


      ),
    );
  }
}
