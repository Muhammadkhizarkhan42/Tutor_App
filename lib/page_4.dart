import 'package:flutter/material.dart';
import 'package:home_projects/page_2.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:home_projects/review_tab.dart';
import 'availability_tab.dart';
class PersonPage extends StatefulWidget {
  const PersonPage({Key? key}) : super(key: key);
  @override
  State<PersonPage> createState() => _PersonPageState();
}
class _PersonPageState extends State<PersonPage> {
 late TabController controller;
@override
  // void initState(){
  //   super.initState();
  //  // controller=TabController(length: 2, vsync: this);
  // }
  // void dispose(){
  //   controller.dispose();
  //   super.dispose();
  // }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //SizedBox(height: 20,),
                ClipPath(
                  clipper: DiagonalPathClipperTwo(),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft:
                          Radius.circular(30),
                      ),
                      boxShadow:[
                        BoxShadow(
                        color: Color(0xffeceff1),
                        blurRadius: 25,
                      ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: BackButton(
                            onPressed:(){
                              showDialog(context: context,
                                  builder: (context)=>AlertDialog(
                              title: Text("Are you Sure"),
                              actions: [
                                TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context, MaterialPageRoute(
                                        builder: (context)=> SignIn(),
                                      ),
                                      );
                                    },
                                    child: Text("yes"),),
                                TextButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text("Cancel"),),

                              ],
                                  )
                              );
                        }

                        ),
                      ),
                        SizedBox(width: 75,),
                        Text(
                          " My Qutor",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.only(left: 15,right: 15,bottom: 0,top: 0),
                 child: Column(
                   children: [
                   Row(children: [
                     Column(
                       children: [
                         Row(children: [
                           Text(
                             'Muhammad Khizar',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Icon(Icons.male,color: Colors.orange),
                         ],
                         ),
                         SizedBox(height: 10,),
                         Text(
                           'Alhumdullah for one more year being\nonthis plate formand its shaped me ',
                           style: TextStyle(
                             fontSize: 15,
                             fontWeight: FontWeight.w600,
                           ),

                         ),
                       ],
                     ),
                     SizedBox(width: 30,),
                     CircleAvatar(
                      // foregroundImage: Image.asset( 'assets/images/khzar2.jpg',),
                       //backgroundImage: ,//
                       //backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/khzar2.jpg',),
                       radius: 50,
                      // child: Image.asset( 'assets/images/khzar2.jpg',),
                     ),
                   ],
                   ),
                     SizedBox(height: 5,),
                     Row(children: [
                       Icon(Icons.location_on_outlined,color: Colors.orange),
                       Text("wongsamaju"),
                       SizedBox(width: 20,),
                       Row(children: [
                         Icon(Icons.star,color: Colors.orange),
                         Text("2 Years"),
                       ],),
                     ],),
                    SizedBox(height: 20,),
                    ClipPath(
                      clipper: OvalTopBorderClipper(),
                      child: Container(

                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffeeeeee),
                        ),
                        child: Column(
                          children:[
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              child: Align(
                                alignment: Alignment.center,
                                child: TabBar(
                                    isScrollable: true,
                                    labelPadding: const EdgeInsets.only(left: 30,right: 30),
                                    labelColor: Colors.black,
                                    unselectedLabelColor: Colors.grey,
                                    indicatorColor: Colors.orange,
                                    tabs: [
                                      Tab(text:"Availability",),
                                      Tab(text: "Reviews",),
                                    ]),
                              ),
                            ),
                            Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width,
                              child: TabBarView(
                                  children: [
                                    Tab1(),
                                    Review(),
                                  ]),
                            ),
                          ]
                        ),
                      ),
                    ),

                   ],
                 ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
