// ignore_for_file: file_names

// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import 'main.dart';

// class Forgetpassword extends StatefulWidget {
//   const Forgetpassword({super.key});

//   @override
//   State<Forgetpassword> createState() => _ForgetpasswordState();
// }

// class _ForgetpasswordState extends State<Forgetpassword> {
  
//   bool isvisible = false ;
//    bool _isButtonDisabled = false;

//   void _handleButtonTap() {
//   if (!_isButtonDisabled) {
//      sharepref!.setBool('booltime', false);
//     setState(() {
//       _isButtonDisabled = true;
//       isvisible = true ;
//     });
//     Future.delayed(const Duration(seconds: 30), () {
//       setState(() {
//         _isButtonDisabled = false;
//         isvisible = false ;
//       });
      
//     });
//   }
// }
// call (){ 
//       _isButtonDisabled = true ;
//        isvisible = true;
//   Future.delayed(const Duration(seconds: 30), () {
//   sharepref!.setBool('booltime', true);
//       setState(() {
//         _isButtonDisabled = false;
//         isvisible = false ;
//       });
//     });}
//   @override
//   Widget build(BuildContext context) {
//     if (sharepref!.getBool('booltime') == false){
//       call();
//     }
//     var resetpasswordemail ;
//      GlobalKey<FormState> formkeystate = GlobalKey<FormState>();
//     return Scaffold(
//       appBar: AppBar(title: Text('resrt password'.tr),),
//       body: ListView(
//         children: [
//           const SizedBox(height: 100,),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Form(key: formkeystate,
//               child: TextFormField(
//               onSaved: (newValue) {
//                 resetpasswordemail = newValue ;
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
//             hintText: 'email'.tr,
//             border: const OutlineInputBorder(borderRadius:  BorderRadius.all(Radius.circular(10))),
//             prefixIcon: const Icon(Icons.mail)),
//             ),),
//           ),
    
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Center(
//             child: Visibility(visible: isvisible,
//               child:  Text('wait for 30 seconds'.tr)),
//           ),
//         ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(child: ElevatedButton(onPressed: _isButtonDisabled ? null : () async{
             
//         var formdata = formkeystate.currentState;
//          formdata!.save();
         
//        if (formdata.validate() ) {
//          setState(() {
//               isvisible = true ;
//               });
//            try {
//             await FirebaseAuth.instance.setLanguageCode("ar");
//           await FirebaseAuth.instance
//           .sendPasswordResetEmail(email: resetpasswordemail).whenComplete(() => showDialog(context: context, 
//                     builder: (context){
//                   return  AlertDialog(
//                    title: Center(child: Text('check your email'.tr)),
//                  );
//                }));
//           _handleButtonTap();
// } on FirebaseAuthException catch (e) {
//    print(e);
  
//   if (e.code == e.code) {
//     showDialog(context: context, 
//                     builder: (context){
//                   return  AlertDialog(
//                    title: Center(child: Text('wrong account'.tr)),
//                  );
//                });
//     setState(() {
//       _isButtonDisabled = false ;
//       isvisible = false ;
//     });
//   } 
// }
          
//        }
//             }, child: Text('send'.tr))),
//           )
//         ],
//       ),
      
//     );
//   }
// }