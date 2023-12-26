import 'package:flutter/material.dart';
import 'package:home_projects/page_2.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text(
                'Choose your Account type',
              style: TextStyle(
                fontSize: 27,
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                      builder: (contex) => SignIn(),),);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow:[
                        BoxShadow(
                            color: Color(0xffeceff1),
                          blurRadius: 30,
                          offset:Offset(1.5,2.0),
                        )
                      ] ,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:
                     ListTile(
                        leading: Image.asset('assets/images/people2.png'),
                      title: Text('Parent/Guardian',
                      style: TextStyle(
                      color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      ),
                        subtitle: Text('Explore and apply yoyr self and on your kid behalf.',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                  builder: (contex) => SignIn(),),);

              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Color(0xffeceff1),
                      blurRadius: 30,
                      offset:Offset(1.5,2.0),
                    )
                  ] ,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                ListTile(
                  leading:Image.asset('assets/images/people3.png',width: 60,),
                  title: Text('My Self',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  subtitle: Text('Explore and apply your self only',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
