

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Aboutus extends StatelessWidget {
 const Aboutus({super.key});

 

  

  @override
  Widget build(BuildContext context) { 
    String aboutus = 'aboutus'.tr ;
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Text(aboutus,style: TextStyle(fontSize: 18),)
          ],
        ),
      )
    );
  }}
