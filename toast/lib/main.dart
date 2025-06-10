// //
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// //
// // void main(){
// //   runApp(MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home:MyHome() ,));
// // }
// // class MyHome extends StatefulWidget {
// //   const MyHome({super.key});
// //
// //   @override
// //   State<MyHome> createState() => _MyHomeState();
// // }
// //
// // class _MyHomeState extends State<MyHome> {
// //
// //   var Showtaost= "";
// //   var namecontroller =TextEditingController();
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Scaffold( body: SafeArea( child:
// //
// //     Column(
// //         children: [
// //           Text(Showtaost),
// //           TextField(controller:namecontroller ,),
// //           ElevatedButton(onPressed: () {
// //             Showtaost =namecontroller.text.toString();
// //
// //             Fluttertoast.showToast(msg:"you have successfully $Showtaost" );
// //             setState(() {
// //
// //             });
// //
// //           }, child: Text("data"))
// //         ]
// //
// //     )
// //
// //
// //     ));
// //   }
// // // }
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// //
// // void main(){
// //   runApp(MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home:MyHome() ,));
// // }
// // class MyHome extends StatefulWidget {
// //   const MyHome({super.key});
// //
// //   @override
// //   State<MyHome> createState() => _MyHomeState();
// // }
// //
// // class _MyHomeState extends State<MyHome> {
// //
// //   var Showtaost= "";
// //   var namecontroller =TextEditingController();
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Scaffold( body: SafeArea( child:
// //
// //     Column(
// //         children: [
// //           Text(Showtaost),
// //           TextField(controller:namecontroller ,),
// //           ElevatedButton(onPressed: () {
// //             Showtaost =namecontroller.text.toString();
// //
// //             Fluttertoast.showToast(msg:"you have successfully $Showtaost" );
// //             setState(() {
// //
// //             });
// //
// //           }, child: Text("data"))
// //         ]
// //
// //     )
// //
// //
// //     ));
// //  }
// // }
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// void main(){
//   runApp(MaterialApp(home:MyHome() ,));
// }
//
// class MyHome extends StatefulWidget {
//   const MyHome({super.key});
//
//   @override
//   State<MyHome> createState() => _MyHomeState();
// }
//
// class _MyHomeState extends State<MyHome> {
//   var isSwitchOn =false;
//   @override
//   Widget build(BuildContext context) {
//    return SafeArea(child: Scaffold(
//       body: Column(
//         children: [
//           ElevatedButton(onPressed: () {
//             showDialog(context: context, builder: (context) {
//               return AlertDialog(
//                 title: Text("LogOut"),
//                 content: Text("Are you sure "),
//                 backgroundColor: Colors.yellowAccent,
//                 actions: [
//                   TextButton(onPressed: () {
//                     Navigator.pop(context);
//                   }, child: Text("Yes")),
//                   TextButton(onPressed: () {
//                     Navigator.pop(context);
//                   }, child: Text("No"))
//                 ],
//               );
//             },);
//           }, child: Text("Simple Dialog")),
//           ElevatedButton(onPressed: () {
//             showDialog(context: context, builder: (context) {
//               return AlertDialog(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//                 title: Text("Log In"),
//                 content: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.warning,color: Colors.orange,size: 50,),
//                     SizedBox(height: 10,),
//                     Text("This is a custom alert dialog.")
//                   ],
//
//                 ),
//                 actions: [
//                   TextButton(onPressed: () => Navigator.pop(context), child: Text("Yes")),
//                   TextButton(onPressed: () => Navigator.pop(context), child: Text("No")),
//                 ],
//               );
//             },);
//           }, child: Text("Custom Dialog")),
//           ElevatedButton(onPressed: () {
//             Fluttertoast.showToast(msg: "Simple Toast");
//           }, child: Text("Simple Toast")),
//           ElevatedButton(onPressed: () {
//             Fluttertoast.showToast(
//                 msg: "This is Center Short Toast",
//                 toastLength: Toast.LENGTH_SHORT,
//                 gravity: ToastGravity.CENTER,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: Colors.red,
//                 textColor: Colors.white,
//                 fontSize: 16.0
//
//             );
//           }, child: Text("Custom Toast"))
//         ],
//       ),
//     ));
//   }
// }
//
//
//
//
//
//




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(home: MyHomeScreen() ,));
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
          Column(
            children: [
              ElevatedButton(onPressed: () {
                showDialog(context: context, builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.purpleAccent,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(

                      children: [
                        Icon(Icons.logout),
                        Text("LogOut"),
                        Text("Are you sure that you want to logout?"),
                        Row(
                          children: [
                            ElevatedButton(onPressed: () {
                              Fluttertoast.showToast(
                                  msg: "Logout Successfully");
                              Navigator.pop(context);
                            }, child: Text("Yes")),
                            ElevatedButton(onPressed: () {
                              Fluttertoast.showToast(msg: "Not Successfully");
                              Navigator.pop(context);
                            }, child: Text("No"))
                          ],
                        )
                      ],
                    ),
                  );
                },);
              }, child: Text("LogOut")),


            ],
          ),
        )
    );
  }
}