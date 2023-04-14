import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterbasics/IntroPage.dart';
import 'package:flutterbasics/SplashScreen.dart';
import 'package:flutterbasics/widgets/rounded_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,


      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return MyHomeState();

  }
 }
 class MyHomeState extends State<MyHomePage>{
  var wtController = TextEditingController();
  var ftController =  TextEditingController();
  var inController =  TextEditingController();
  var result = "";
  var bgColor = Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     title:  Center(child: Text('your BMI')),
     ),
         body:Container(
           color: bgColor,
           child: Center(
             child: Container(
               width: 300,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('BMI',style: TextStyle(
                     fontSize: 34,fontWeight: FontWeight.w600
                   )),
                   SizedBox( height:11),
                   TextField(
                     controller: wtController,
                     decoration: InputDecoration(
                       label: Text('Enter your weight(in Kgs)'),
                       prefixIcon: Icon(Icons.monitor_weight_outlined)
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox( height:11),
                   TextField(
                     controller: ftController,
                     decoration: InputDecoration(
                         label: Text('Enter your height(in Feet)'),
                         prefixIcon: Icon(Icons.height)
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox( height:11),
                  TextField(
                    controller: inController ,
                    decoration: InputDecoration(
                        label: Text('Enter your height(in Inches)'),
                      prefixIcon: Icon(Icons.height),

                    ),
                    keyboardType: TextInputType.number,

                  ),
                   SizedBox(height: 16,),
                   ElevatedButton(onPressed: (){
                     var wt = wtController.text.toString();
                     var ft = ftController.text.toString();
                     var inch = inController.text.toString();
                     if(wt!="" && ft!="" && inch!=""){
                       //BMI calculation
                       var iWt = int.parse(wt);
                       var iFt = int.parse(ft);
                       var iInch = int.parse(inch);

                       var tInch = (iFt*12)+iInch;
                       var tcm = tInch*2.54;
                       var tM = tcm/100;
                      var bmi = iWt/(tM*tM);
                      var msg="";
                      if(bmi>25){
                        msg = 'You are OverWeight!!!';
                        bgColor= Colors.red.shade400;
                      }

                      else if(bmi<18){
                        msg = 'You are UnderWeight!!!';
                        bgColor = Colors.red.shade200;
                     }
                      else{
                        msg = 'You are Healthy!!!';
                        bgColor=  Colors.green.shade200;
                     }
                      setState(() {
                        result ="$msg \nYour BMI is : ${bmi.toStringAsFixed(2)}";
                      });

                     }
                     else{
                       setState(() {
                         result= "Please fill all the required blanks!!!";
                       });
                     }
                   }, child: Text('Calculate')),
                   SizedBox(height: 11),
                   Text(result , style: TextStyle(fontSize: 20),)
                 ],
               ),
             ),
           ),
         )
   );
  }
}

