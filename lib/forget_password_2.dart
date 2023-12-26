import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:home_projects/page_2.dart';

import 'main.dart';
class ForgetPas2 extends StatefulWidget {
  const ForgetPas2({Key? key}) : super(key: key);

  @override
  State<ForgetPas2> createState() => _ForgetPas2State();
}

class _ForgetPas2State extends State<ForgetPas2> {
  @override
  // void newaccount(){
  //   void setState(){
  //     var name=controller1.text;
  //     var email=controller2.text;
  //     var phone=controller3.text;
  //     var pasword=controller4.text;
  //     var c_pasword=controller5.text;
  //     if(email.isNotEmpty &&email.contains("@") && pasword.isNotEmpty &&pasword==c_pasword){
  //       emails.add(email);
  //       paswords.add(pasword);
  //     showDialog(context: context,
  //         builder: (context)=>AlertDialog(
  //           title: Text("Soryy"),
  //           actions: [TextButton(onPressed:(){
  //             Navigator.pop(context);
  //           },
  //               child: Text("ok"))],
  //         )
  //     );
  //     } else if(!email.contains("@") ){
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text("Sorry Wrong ID Password"),
  //           content: Text("Please Try Again"),
  //           actions: [
  //             TextButton(onPressed: (){
  //               Navigator.pop(context);
  //             },
  //               child: Text("ok"),
  //             ),
  //           ],
  //         ),);
  //     }else if(pasword != c_pasword){
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text("Sorry Wrong ID Password"),
  //           content: Text("Please Try Again"),
  //           actions: [
  //             TextButton(onPressed: (){
  //               Navigator.pop(context);
  //             },
  //               child: Text("ok"),
  //             ),
  //           ],
  //         ),);
  //     }else if(name.isEmpty && email.isEmpty && phone.isEmpty && pasword.isEmpty && c_pasword.isEmpty){
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text("Sorry Wrong ID Password"),
  //           content: Text("Please Try Again"),
  //           actions: [
  //             TextButton(onPressed: (){
  //               Navigator.pop(context);
  //             },
  //               child: Text("ok"),
  //             ),
  //           ],
  //         ),);
  //     }else{print("else run");}
  //   }
  // }

  TextEditingController controlleremail=TextEditingController();
  TextEditingController controllerpasword=TextEditingController();
  TextEditingController controllercpasword=TextEditingController();

  void savepasword(){
    setState(() {

      var email=controlleremail.text;
      var pasword=controllerpasword.text;
      var cpasword=controllercpasword.text;

      if(email.isEmpty ||pasword.isEmpty || cpasword.isEmpty){
        showDialog(
            context: context,
            builder: (context)=> AlertDialog(
              title: Text("Please filled all Fields Correctly"),
              actions: [
                TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                      controllerpasword.clear();
                      controllercpasword.clear();
                      controlleremail.clear();
                    },
                    child: Text("ok"))
              ],
            )
        );
      }
      else if(email !=emails ){
        showDialog(
            context: context,
            builder: (context)=> AlertDialog(
              title: Text("Please Enter Correct Email "),
              actions: [
                TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                      controllerpasword.clear();
                      controllercpasword.clear();
                      controlleremail.clear();
                    },
                    child: Text("ok"))
              ],
            )
        );
      }
      else if(pasword != cpasword){
        showDialog(
            context: context,
            builder: (context)=> AlertDialog(
              title: Text("Password and Correct Password must Be Same "),
              actions: [
                TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                      controllerpasword.clear();
                      controllercpasword.clear();
                      controlleremail.clear();
                    },
                    child: Text("ok"))
              ],
            )
        );
      }

      for(int i=0; i<=emails.length;i++)
      {
        if (email == emails[i]) {
          paswords.removeAt(i);
          paswords.insert(i, pasword);
          showDialog(
              context: context,
              builder: (context) =>
                  AlertDialog(
                    title: Text("Congress....."),
                    content: Text("Password Forget Sucessfuly"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => SignIn()
                            )
                            );
                          },
                          child: Text("ok"))
                    ],
                  )
          );
        }
      }



    });
  }




  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 30,),
            Center(
              child: Image.asset(
                'assets/images/degree.png',
                height: 80,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Forget Password',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Please Enter the details below to continue',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
            // SizedBox(height: 13,),
            // TextField(
            //   keyboardType: TextInputType.emailAddress,
            //   //controller: controller1,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     hintText: 'Full Name',
            //     hintStyle: TextStyle(
            //       fontSize: 15,
            //     ),
            //     prefixIcon: Icon(Icons.person_outline),
            //   ),
            // ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.text,
              controller: controlleremail,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Email Again',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.text,
              controller: controllerpasword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter New password',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: controllercpasword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Conform Password',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.phone_android),
              ),
            ),
            SizedBox(height: 15,),
            // SizedBox(height: 10,),
            // TextField(
            //   keyboardType: TextInputType.text,
            // //  controller: controller4,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     hintText: 'Password',
            //     hintStyle: TextStyle(
            //       fontSize: 15,
            //     ),
            //     prefixIcon: Icon(Icons.lock_outline_sharp),
            //   ),
            // ),
            // SizedBox(height: 10,),
            // TextField(
            //   keyboardType: TextInputType.text,
            // //  controller: controller5,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     hintText: 'Conform Password',
            //     hintStyle: TextStyle(
            //       fontSize: 15,
            //     ),
            //     prefixIcon: Icon(Icons.lock_outline_sharp),
            //   ),
            // ),
            // SizedBox(height: 25,),
            InkWell(
              onTap: () {
                savepasword();
              },
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Save password',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Center(
                  child: Text(
                    '          Remember Your Account ? ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=> SignIn()) );
                  },
                  child: Container(
                    height: 25,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
