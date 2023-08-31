

// import 'package:austawat/loading.dart';
// import 'package:austawat/privacypolicy.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart' ;
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:get/get.dart';

// import 'mylocale.dart';


// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//  GlobalKey<FormState> formkeystate = GlobalKey<FormState>();
     

//   bool _isAgreedToTerms = false;
//   void agree (newValue) {
//                   setState(() {
//                     _isAgreedToTerms = newValue!;
//                   });
//                 }
  
  
//   String myusername = '';
//   String myemail = '';
//   String mypassword = '';
//   String myconfirmpassword = '';

//   @override
//   Widget build(BuildContext context) {
  

//      signu() async{
//         var formdata = formkeystate.currentState;
//          formdata!.save();
//        if (formdata.validate() && myconfirmpassword == mypassword ){
//          CollectionReference users =  FirebaseFirestore.instance.collection('service');
//        try {
//         showloading(context);
//            final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//             email: myemail,
//              password: mypassword,
//                 );
//                 // await credential.user!.sendEmailVerification();
           
            
     
//         await users.doc(FirebaseAuth.instance.currentUser!.uid).set(
//               {
//             'username': myusername, 
//             'free' :  false 
//              })
//           .then((value) => print("User Added" ))
//           .catchError((error) => print("Failed to add user: $error"));
    
         
    

          
//                 return credential ;
//                  } 
//                  on FirebaseAuthException catch (e) {
                 
//                    if (e.code == 'weak-password') {
                   
//                    } else if (e.message == e.message) {
//                     print(e);
//                    Navigator.of(context).pop();
//                     showDialog(context: context, 
//                     builder: (context){
//                   return  AlertDialog(
//                    title: Center(child: Text('Account already used'.tr)),
                      
//                  );
//                });
//                        }
//                        } catch (e) {
//                         print(e);
//                     }
//                   }
//      } 


//  void showAlertDialog(BuildContext context, String routnam) async {
//     var response = await signu();
    
//     if (response != null) {
//        Navigator.of(context).pushReplacementNamed(routnam);
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Center(child: Text('check email'.tr)),
//           );
//         },
//       );
//     }
//   }
//    Mylocalecontroller localecont = Get.find();
//     return Scaffold(
//        appBar: AppBar(
//         actions: [ PopupMenuButton(
//                 icon: const Icon(Icons.language),
//                   itemBuilder: (context) => [
//                    PopupMenuItem(
//                     onTap: () {
//                       localecont.changelang('ar');
//                     },
//                   child:  Text('Arabic'.tr),
//                       ),
//                        PopupMenuItem(onTap: () {
//                          localecont.changelang('en');
//                        },
//                   child: Text('English'.tr),
//                       ),
//                       ],
//   )],
//       ),
//       body: Form(key: formkeystate,
//         autovalidateMode: AutovalidateMode.always,
//         child: ListView(
//         children: [
          
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               onSaved: (newValue) {
//                 myusername = newValue! ;
//               },
//                validator:(text){
//                    if ( text!.isEmpty   ){
//                       return 'should not be empty'.tr ;

//                    } 
//                     if ( text.length > 50  ){
//                       return 'should not more than 50'.tr ;
//                    } 
//                     return null;
//                        },
//                        maxLines: 1,
//           decoration:   InputDecoration(
//             hintText: 'username'.tr,
//             border: const OutlineInputBorder(borderRadius:  BorderRadius.all(Radius.circular(10))),
//             prefixIcon: const Icon(Icons.person)),
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//                onSaved: (newValue) { setState(() {
//                  myemail = newValue!  ;
//                });
                 
//               },
//               validator:(text){
//                    if ( text!.isEmpty   ){
//                       return 'should not be empty'.tr ;
//                    } 
//                     if ( text.length > 50  ){
//                       return 'should not more than 50'.tr ;
//                    } 
//                     return null;
//                        },
//                         maxLines: 1,
//           decoration:   InputDecoration(
//             hintText: 'email'.tr,
//             border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//             prefixIcon: const Icon(Icons.mail)),
//             ),
//           ),

//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               obscureText: true,
//                onSaved: (newValue) {
//                mypassword = newValue! ;
//               },
//              validator:(text){
                  
//                      if ( text!.length < 8  ){
//                       return 'should not be less then 8'.tr ;
//                    } 
//                     return null;
//                        },
//                         maxLines: 1,
//           decoration:   InputDecoration(
//             hintText: 'password'.tr,
//             border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//             prefixIcon: const Icon(Icons.lock)),
//             ),
          
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               obscureText: true,
//                onSaved: (newValue) {
//                myconfirmpassword = newValue! ;
//               },
//              validator:(text){
                  
//                      if ( myconfirmpassword != mypassword ){
//                       return 'password is not matching'.tr ;
//                    } 
//                     return null;
//                        },
//                         maxLines: 1,
//           decoration:  InputDecoration(
//             hintText: 'confirm password'.tr,
//             border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//             prefixIcon: const Icon(Icons.lock)),
//             ),
//           ),
           
//           Row(
//                 children: [
//                   Checkbox(
//                     value: _isAgreedToTerms,
//                     onChanged: agree, 
//                   ),
//                   Text("I agree to ".tr),
//                   TextButton(
//                     onPressed: (){ 
//                        Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()),);
//                     },
//                     child: Text('Privacy Policy'.tr),
//                   ),
//                   Text(" and ".tr),
//                   TextButton(
//                     onPressed: (){
//                       Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => const Termsofuse()),);
//                     },
//                     child: Text('Terms'.tr),
//                   ),
//                 ],
//               ),
//           const SizedBox(height: 10,),
//            Column(
//              children: [
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: ElevatedButton(onPressed: !_isAgreedToTerms? (){
//                   showDialog(context: context, 
//                     builder: (context){
//                   return  AlertDialog(
//                    title: Center(child: Text('you should agree to privacy'.tr)),
//                  );
//                });
//                  } : () => showAlertDialog(context , '/signin'),
//                  child:  Text("Sign up".tr)),
//                ),
//              ],
//            ),
//             Padding(
//             padding: const EdgeInsets.all(10),
//             child:  Row(
//               children: [
//                  Text("if you have password".tr),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pushNamed('/signin');
//                   },
//                   child:  Text(" click here".tr, 
//                   style: const TextStyle(color: Color.fromRGBO(46,204,113,1)),),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

