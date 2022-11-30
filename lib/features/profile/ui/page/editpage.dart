


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_project/model/user_model.dart';
// import 'package:lottie/lottie.dart';

// import '../../../../translations/locale_keys.g.dart';
// import '../../resource/user_preferences.dart';
// import '../../textfield_widget.dart';

// class EditScreen extends StatefulWidget {
//   const EditScreen({Key? key}) : super(key: key);

//   @override
//   _EditScreenState createState() => _EditScreenState();
// }

// class _EditScreenState extends State<EditScreen> {
//   User? user = FirebaseAuth.instance.currentUser;
//   UserModel loggedInUser = UserModel();

//   @override
//   void initState() {
//     super.initState();
//     FirebaseFirestore.instance
//         .collection("users")
//         .doc(user!.uid)
//         .get()
//         .then((value) {
//       this.loggedInUser = UserModel.fromMap(value.data());
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xff036B56),
//           title: Text('Edit'),
//         ),
//         body: SingleChildScrollView(
//             child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Lottie.network(
//                           'https://assets1.lottiefiles.com/private_files/lf30_bvaweomu.json'),
//                       Container(
//                         child: Text(
//                           LocaleKeys.welcome.tr(),
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       TextFieldWidget(
//                         label: 'Full Name',
//                         text: "${loggedInUser.firstName}",
//                         onChanged: (name) {},
//                       ),
//                       const SizedBox(height: 15),
//                       TextFieldWidget(
//                         label: 'Name',
//                         text: "${loggedInUser.secondName}",
//                         onChanged: (name) {},
//                       ),
//                       const SizedBox(height: 15),
//                       TextFieldWidget(
//                         label: 'Email',
//                         text: "${loggedInUser.email}",
//                         onChanged: (email) {},
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           // ignore: unnecessary_statements
//                           UserPreferences.setUser(user);
//                           Navigator.of(context).pop();
//                         },
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xff036B56)),
//                         child: Text('Save'),
//                       )
//                     ]))));
//   }
// }
//               Container(
             
//                 child:
                
//                     Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
//                         style: TextStyle(
//                           color: Colors.black54,
//                           fontWeight: FontWeight.w500,
//                         )),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("${loggedInUser.email}",
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w500,
//                     )),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ProfileScreen()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xff036B56)),
//                 child: Text('Save'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // the logout function
//   Future<void> logout(BuildContext context) async {
//     await FirebaseAuth.instance.signOut();
//     Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => LoginScreen()));
//   }
// }


// // class _EditScreenState extends State<EditScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color(0xff036B56),
// //         title: Text('Edit'),
// //       ),
// //     );
// //   }
// // }
