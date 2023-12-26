import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      // boxShadow: [BoxShadow(
                      //   color:Color(0xffbdbdbd),
                      //   blurRadius: 40,
                      // )],
                    ),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          ClipPath(
                            clipper: ArrowClipper(25, 100,Edge.RIGHT),
                            child: Container(
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                "Mon \n 18",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Class Duaration",style: TextStyle(
                                    fontSize: 11,
                                  ),),
                                  Text("1.5 hrs approx",style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14
                                  ),),
                                ],
                              ),
                          ),

                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Timing (All day)",style: TextStyle(
                                fontSize: 11,
                              ),),
                              Text("Recit Al_Quran",style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                fontSize: 14
                              ),),
                            ],
                          ),
                        ],
                      ),
                      children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 5),
                          child: Container(
                            height: 25,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text(
                                "9AM - 11AM(Morning)",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,bottom: 10),
                          child: Container(
                            height: 25,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text(
                                "5AM - 7PM(Evening)",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [BoxShadow(
                  //   color: Color(0xffbdbdbd),
                  //   blurRadius: 50,
                  //
                  // ),],
                ),
                child: ExpansionTile(
                  trailing: SizedBox(),
                  title: Row(
                    children: [
                      ClipPath(
                        clipper: ArrowClipper(25, 120, Edge.RIGHT),
                        child: Container(
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                          child: Center(
                            child: Text(
                                "Sun\n 21",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            ),
                          ),
                    ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Class Duaration",style: TextStyle(
                              fontSize: 11,
                            ),),
                            Text("2 hrs approx",style: TextStyle(
                                fontWeight: FontWeight.w900,
                              fontSize: 14
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Timing (All day)",style: TextStyle(
                            fontSize: 11,
                          ),),
                          Text("Al_Quran Basic",style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ],
                  ),
                  children: [
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: Container(
                        height: 25,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text(
                            "9AM - 11AM(Morning)",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 10),
                      child: Container(
                        height: 25,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text(
                            "5AM - 7PM(Evening)",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [BoxShadow(
                  //   color:Color(0xffbdbdbd),
                  //   blurRadius: 40,
                  // )],
                ),
                child: ExpansionTile(
                  trailing: SizedBox(),
                  title: Row(
                    children: [
                      ClipPath(
                        clipper: ArrowClipper(25, 100,Edge.RIGHT),
                        child: Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Thu \n 20",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Class Duaration",style: TextStyle(
                            fontSize: 11,
                          ),),
                          Text("1.5 hrs approx",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14
                          ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Timing (All day)",style: TextStyle(
                            fontSize: 11,
                          ),),
                          Text("Intens Quran",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14
                          ),),
                        ],
                      ),
                    ],
                  ),
                  children: [
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: Container(
                        height: 25,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text(
                            "9AM - 11AM(Morning)",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 10),
                      child: Container(
                        height: 25,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text(
                            "5AM - 7PM(Evening)",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w900
                            ),
                          ),
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
    );
  }
}
