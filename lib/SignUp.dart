import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(MaterialApp(
      home: SignUp(),
    ));
  }
}
class SignUp extends StatelessWidget
{
  static const bgcolor = const Color(0xFFEADBA5);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(

        fit: StackFit.loose,
        children: [
          Container(
              child: Image.asset('assets/brown-papyrus-paper.png')
          ),
          Container(
            color: bgcolor,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset('assets/anvil.png'),
                  padding: EdgeInsets.only(top: 80),
                ),
                Container(
                  child: Text(
                    'Create account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,fontSize: 30),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 25,right: 10),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 25,right: 10),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 25,right: 10),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Checkbox(value: false, onChanged: (bool value) {print(value);}),
                      ),
                      Container(
                          child: Text(
                              'I agree to the',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                              )
                          )
                      ),
                      Spacer(),
                      Container(
                        child: TextButton(
                          child: Text(
                              'Terms & Conditions ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                              )
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    child: Center(
                      child: TextButton(
                        child: Text(
                            'March',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            )
                        ),
                        onPressed: () {},
                      ),
                    )
                ),
                Container(
                  child: Image.asset('assets/Layer 2.png'),
                  padding: EdgeInsets.only(bottom: 100),
                ),

              ], // Children
            ),
          ),

        ],
      ),
    );
  }
}