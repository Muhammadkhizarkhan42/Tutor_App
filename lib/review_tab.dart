import 'package:flutter/material.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Text(
                  "Students Reviews",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900
              ),
              ),
              Stack(
                children: [
                 // Image.asset("assets/images/woman.png"),
                 //  SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 25.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[BoxShadow(
                            color: Color(0xffeceff1),
                            blurRadius: 50
                        )],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0,top: 20.0,bottom: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nadia",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "This Tutor is Really nice and Handsome,\nHe really Helped getting the most out me ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      ),
                    ),
                  //SizedBox(height: 40,),

                  Positioned(
                           bottom: 70.0,
                    // top: 0,
                    child: PhysicalModel(
                      color: Colors.grey,
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(25),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff80cbc4),
                        radius: 25,
                        foregroundImage: AssetImage('assets/images/woman.png',),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 20,),
              const SizedBox(height: 20,),
              Stack(
                children: [
                  // Image.asset("assets/images/woman.png"),
                  //  SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 25.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[BoxShadow(
                            color: Color(0xffeceff1),
                            blurRadius: 50
                        )],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0,top: 20.0,bottom: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Khizar",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "This Tutor is Really nice and Handsome,\nHe really Helped getting the most out me ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(height: 40,),

                  Positioned(
                    bottom: 70.0,
                    // top: 0,
                    child: PhysicalModel(
                      color: Colors.grey,
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(25),
                      child: CircleAvatar(
                        backgroundColor: Color(0xff80cbc4),
                        radius: 25,
                        foregroundImage: AssetImage('assets/images/young-man.png',),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 5,left: 20),
                    child: Container(
                     width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[BoxShadow(
                            color: Color(0xffeceff1),
                            blurRadius: 50
                        )],
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 20,left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ayesha",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,

                                ),
                              ),
                              Text(
                              "This is Very Nice tutor and Handsome,\nHe really Helped getting the most out me ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                          ],
                          ),
                        ),
                    ),
                  ),
                  Positioned(
                      child: PhysicalModel(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                        elevation: 5,
                        //shadowColor: Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff80cbc4),
                          radius: 25,
                          foregroundImage: AssetImage('assets/images/woman1.png',),
                        ),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );



  }
}
//Column(
//   children: [
//     Container(
//       child: ExpansionTile(
//       trailing: SizedBox(),
//           title: Row(
//             children: [
//               ClipPath(
//                 clipper: ArrowClipper(25, 120, Edge.RIGHT),
//               )
//             ],
//           )
//       ),
//     ),
//   ],
// );





//Padding(
//   padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
//   child: SingleChildScrollView(
//     child: Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
//           child: Container(
//             padding: const EdgeInsets.only(bottom: 10.0),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: ExpansionTile(
//               trailing: const SizedBox(),
//               title: Padding(
//                 padding: const EdgeInsets.only(top: 7.0),
//                 child: Row(
//                   children: [
//                     ClipPath(
//                       clipper: ArrowClipper(25, 120, Edge.RIGHT),
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.11,
//                         width: MediaQuery.of(context).size.width * 0.22,
//                         decoration: BoxDecoration(
//                           color: const Color(0xff00b0e7),
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const Padding(
//                           padding:
//                           EdgeInsets.only(top: 20.0, left: 10.0),
//                           child: Text(
//                             'MON \n 18',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15.0,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 8.0,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Text(
//                           'Class Duration',
//                           style: TextStyle(
//                             fontSize: 12.0,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 2.0,
//                         ),
//                         Text(
//                           '1.5hrs approx',
//                           style: TextStyle(
//                               fontSize: 12.0,
//                               color: Colors.black87,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     const VerticalDivider(
//                       width: 20.0,
//                       color: Colors.black54,
//                       thickness: 0.6,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           'Timing (All day)',
//                           style: TextStyle(
//                             fontSize: 12.0,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 2.0,
//                         ),
//                         Text(
//                           '1.5hrs approx',
//                           style: TextStyle(
//                               fontSize: 12.0,
//                               color: Colors.black87,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               children: [
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 20.0),
//                       child: Container(
//                         margin: const EdgeInsets.only(left: 60.0, bottom: 20.0),
//                         decoration: BoxDecoration(
//                             color: const Color(0xffeeeeee),
//                             borderRadius: BorderRadius.circular(20.0)
//                         ),
//                         child: const Padding(
//                           padding: EdgeInsets.only(
//                             left: 20.0,
//                             right: 60.0,
//                             top: 8.0,
//                             bottom: 8.0,
//                           ),
//                           child: Text(
//                             '9AM - 11Am (Morning)',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 12.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.only(left: 60.0, bottom: 20.0),
//                       decoration: BoxDecoration(
//                           color: const Color(0xffeeeeee),
//                           borderRadius: BorderRadius.circular(20.0)
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.only(
//                           left: 20.0,
//                           right: 60.0,
//                           top: 8.0,
//                           bottom: 8.0,
//                         ),
//                         child: Text(
//                           '5PM - 7PM (Evening)',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//
//       ],
//     ),
//   ),
// );

