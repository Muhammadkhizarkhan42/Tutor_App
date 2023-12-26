import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:home_projects/page_2.dart';

import 'main.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  TextEditingController controller3=TextEditingController();
  TextEditingController controller4=TextEditingController();
  TextEditingController controller5=TextEditingController();
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
  void signup(){
    setState(() {
      var name=controller1.text;
      var email=controller2.text;
      var phone=controller3.text;
      var pasword=controller4.text;
      var cpasword=controller5.text;


      if(name.isEmpty && email.isEmpty && phone.isEmpty && pasword.isEmpty && cpasword.isEmpty){
        showDialog(context: context,
            builder: (context)=> AlertDialog(
              title: Text("Please Filled All fields"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("ok"))
              ],
            ));
      }
      else if(!email.contains("@")){
        showDialog(context: context,
            builder: (context)=> AlertDialog(
              title: Text("Email must Contain @"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("ok"))
              ],
            ));
      }
      else if(pasword !=cpasword){
        showDialog(context: context,
            builder: (context)=> AlertDialog(
              title: Text("Pasword is not Matched With Conform Pasword"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Text("ok"))
              ],
            ));
      }
      else if(email.contains("@") && pasword==cpasword){
        emails.add(email);
        paswords.add(pasword);
        phone_no.add(phone);
        showDialog(context: context,
            builder: (context)=> AlertDialog(
              title: Text("CONGRESS"),
              content: Text("Account Creat SucessFully"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.push(
                    context,MaterialPageRoute(
                    builder: (context)=>SignIn(),
                  ),
                  );
                },
                    child: Text("ok"))
              ],
            ));
        controller1.clear();
        controller2.clear();
        controller3.clear();
        controller4.clear();
        controller5.clear();

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
              'Sign Up',
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
            SizedBox(height: 13,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: controller1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Full Name',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.text,
              controller: controller2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: controller3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Phone_No',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.phone_android),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.text,
              controller: controller4,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.lock_outline_sharp),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.text,
              controller: controller5,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Conform Password',
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                prefixIcon: Icon(Icons.lock_outline_sharp),
              ),
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: () {
                signup();
                print("asaaaaa");
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
                    'Sign up',
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
                    '           Already have Account ? ',
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
