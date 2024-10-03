import 'package:flutter/material.dart';

// FLUTTER gesture detector widget
// on tops, double top etc.

//class MyButton
//stateless sub class, doesn't change
class MyButton extends StatelessWidget{
  //constructor
  //super key name of the parameter "key"
  const MyButton ({super.key});
  //overriding a method from our parent class "StatelessWidget"
  @override
  Widget build(BuildContext context){
    // FLUTTER gesture detector widget
    //to detect gesture a tap which is the onTap notify the console by tapping it.
    return GestureDetector(
      //on tap meaning called the widget top on the mobile or web
      onTap: (){
        print('MyButton was tapped');
      },
      child: Container(
          height: 50,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.lightGreen[500],
          ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
    
  }

}

void main()
{
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:Center (
          child: MyButton(),

        ),
      ),
    ),
  );
}