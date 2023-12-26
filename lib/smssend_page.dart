// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';
// class SmsSend extends StatefulWidget {
//   const SmsSend({Key? key}) : super(key: key);
//
//   @override
//   State<SmsSend> createState() => _SmsSendState();
// }
// final String _url='https://www.youtube.com';
// final String _phonenumber='+923153962776';
// List<String> recipents=["03153962776"];
// class _SmsSendState extends State<SmsSend> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('aaaaaaaaaaa'),
//       ),
//       body:  Center(
//         child: MaterialButton(
//           onPressed: ()async{
//             final _call = 'tel:$_phonenumber';
//             final _text = 'sms:$_phonenumber ';
//             if(await canLaunch(_url)){
//               await launch(_url);
//             }
//           },
//           color: Colors.blue,
//           child: Text('send me'),
//         ),
//       ),
//     );
//   }
// }
