import 'package:flutter/material.dart';
import 'package:home_projects/main.dart';
import 'package:home_projects/page_3.dart';
import 'package:home_projects/page_4.dart';

import 'forget_pasword.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  var obsureText=true;
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  void login(){
    setState(() {
      var email = controller1.text;
      var pasword = controller2.text;

      if(email != emails && pasword != paswords){
        controller1.clear();
        controller2.clear();
        showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: Text("Sorry Wrong ID Password"),
                content: Text("Please Try Again"),
                actions: [
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  },
                    child: Text("ok"),
                  ),
                ],
              ),);
      }
      else if (email == "" && pasword == "") {
        {
          controller1.clear();
          controller2.clear();
          showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
                  title: Text("Sorry Wrong ID Password"),
                  content: Text("Please Try Again"),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      child: Text("ok"),
                    ),
                  ],
                ),);
        }
      }
      for(int i=0;i<=emails.length;i++ ) {
        if (email == emails[i] && pasword == paswords[i]) {
          Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => PersonPage(),
          ),
          );
        }

        // else {
        //   controller1.clear();
        //   controller2.clear();
        //   showDialog(
        //     context: context,
        //     builder: (context) =>
        //         AlertDialog(
        //           title: Text("Sorry Wrong ID Password"),
        //           content: Text("Please Enter correct id password"),
        //           actions: [
        //             TextButton(onPressed: () {
        //               Navigator.pop(context);
        //             },
        //               child: Text("ok"),)
        //           ],
        //         ),);
        // }
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
            SizedBox(height: 70,),
            Center(
              child: Image.asset(
                'assets/images/degree.png',
                height: 80,
                //width: 100,
              ),
            ),
            SizedBox(height: 70,),
            Row(
              children: [
                Text(
                  'Login Now..',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(
              'Please Enter the details below to continue',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: controller1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Email',
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              //obscureText:  false,
              keyboardType: TextInputType.text,
              controller: controller2,
              obscureText: obsureText,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                 onTap: (){
                   setState(() {
                     obscureText:  obsureText= !obsureText;
                   });
                 },
                  child: obsureText? const Icon(Icons.visibility_off,color: Colors.grey ,)
                      :const Icon(Icons.visibility,color: Colors.blue ,)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=> ForgetPas()
                    )
                    );
                  },
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(
                      color: Colors.deepOrange
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: () {
              login();
                },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                 ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Center(
                  child: Text(
                    '           Dont have account ? ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> SignUp())
                    );
                    },
                  child: Container(
                    height: 25,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      'Lets Signup!',
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
