
// import 'package:austawat/forget%20password.dart';
// import 'package:austawat/loading.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'main.dart';
// import 'mylocale.dart';

// class Signin extends StatefulWidget {
//   const Signin({super.key});

//   @override
//   State<Signin> createState() => _SigninState();
// }

// class _SigninState extends State<Signin> {
//  bool isvisible = false ;
//     bool _isButtonDisabled = false;
//     int _countup = 0 ;
//      void _handleButtonTap() {
//   if (!_isButtonDisabled) {
//      sharepref!.setBool('booltime', false);
//     setState(() {
//       _isButtonDisabled = true;
//       isvisible = true ;
//     });
//     Future.delayed(const Duration(minutes: 5), () {
//       setState(() {
//         _isButtonDisabled = false;
//         isvisible = false ;
//         _countup = 0 ;
//         print(_countup);
//       });
//     });
//   }
// }
// call (){ 
//       _isButtonDisabled = true ;
//        isvisible = true;
//   Future.delayed(const Duration(minutes: 5), () {
//   sharepref!.setBool('booltime', true);
//       setState(() {
//         _isButtonDisabled = false;
//         isvisible = false ;
//       });
//     });}
//   @override
//   Widget build(BuildContext context) {
//      if (sharepref!.getBool('booltime') == false){
//       call();
//     }
   
//     var myemail , mypassword;
     

//     GlobalKey<FormState> formkeystate = GlobalKey<FormState>();
    
//     signi() async {
      
//        var formdata = formkeystate.currentState;
//        formdata!.save();
//        if (formdata.validate()  ) {
//         try {
//           showloading(context);
//   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//     email: myemail,
//     password: mypassword,
//   );
//    if (credential.user != null  ) {
//                 // ignore: use_build_context_synchronously
//                 Navigator.of(context).pushReplacementNamed('/homepage');
//                }
//     if(credential.user!.emailVerified == false){
//        // ignore: use_build_context_synchronously
//        Navigator.of(context).pop();
//                     // ignore: use_build_context_synchronously
//                     showDialog(context: context, 
//                     builder: (context){
//                   return  AlertDialog(
//                    title: Center(child: Text('verify your account'.tr)),
//                  );
//                }
//                );

//     }
//   return credential;
// } on FirebaseAuthException catch (e) {
   
//   if (e.code == e.code) {
    
//     Navigator.of(context).pop();
//                     showDialog(context: context, 
//                     builder: (context){
//                   return  AlertDialog(
//                    title: Center(child: Text('wrong account or password'.tr)),
//                  );
//                });
               
//  _countup++ ; 
//  if(_countup == 10) {
//   _handleButtonTap();
//       }
//  } 
// }

//        }
       
//     }
//     Mylocalecontroller localecont = Get.find();
    
//     return Scaffold(
//       appBar: AppBar(
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
//         child: ListView(
//         children: [
//           const SizedBox(height: 100,),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//                 onSaved: (newValue) {
//                 myemail = newValue ;
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
//                         maxLines: 1,
//           decoration:   InputDecoration(
//             hintText: 'email'.tr,
//             border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//             prefixIcon: const Icon(Icons.person)),
//             ),
//           ),
//            Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(obscureText: true,
//               onSaved: (newValue) {
//                 mypassword = newValue ;
//               },
//              validator:(text){
                   
//                     if ( text!.length < 8  ){
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
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child:  Row(
//               children: [
//                  Text("if you don't have password".tr),
//                 InkWell(
//                   onTap: () {
//                     Navigator.of(context).pushNamed('/signup');
//                   },
//                   child:  Text(" click here".tr, 
//                   style: const TextStyle(color: Color.fromRGBO(46,204,113,1)),),
//                 ),
//               ],
//             ),
            
//           ),
//            Padding(
//           padding: const EdgeInsets.all(10),
//           child: Center(
//             child: Visibility(visible: isvisible,
//               child:  Text('you have accedd 10 time'.tr)),
//           ),
//         ),
//           const SizedBox(height: 10,),
//            Column(
//              children: [
//                ElevatedButton(onPressed: _isButtonDisabled ? null : () async{
//                 await signi();
               
//                }, child: Text("Sign in".tr)),
            
//                Padding(
//                  padding: const EdgeInsets.all(10),
//                  child: Center(child: TextButton(onPressed: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Forgetpassword()))
//                   ;
//                  }, child: Text('forget password ?'.tr)),),
//                )
//              ],
//            )
//         ],
//       )),
//     );
//   }
// }