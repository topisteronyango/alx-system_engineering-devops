
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:handbook/themes/themes_helper.dart';
import 'package:handbook/homePage.dart';

import 'forgot_password_page.dart';
import 'registration_page.dart';
import 'package:email_validator/email_validator.dart';



final FirebaseAuth _auth = FirebaseAuth.instance;


class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  int _success = 1;
  String _userEmail = "";

  void _signIn() async {
    final User? user = (
        await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
    ).user;
    if (user != null){
      setState(() {
        _success = 2;
        _userEmail = user.email!;
      });
    } else {
      setState(() {
        _success = 3;
      });
    }
  }
  String _errorMessage = '';


  //final ButtonStyle style =
      //ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20, backgroundColor: Colors.deepPurple));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(30, 5, 20, 10),
                  margin: EdgeInsets.fromLTRB(30, 5, 20, 10),// This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Login into your account',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 30.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [



                              //Real code below
                              Container(
                                child: TextFormField(
                          // decoration: textInputDecoration('Email', 'Enter your email'),

                                  decoration:  InputDecoration(
                                    //border: OutlineInputBorder(),
                                    filled: true,
                                    labelText: 'Email',
                                    hintText: 'Enter Your Email Address',
                                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    border:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(color: Colors.black),


                                         ),
                                      //textInputDecoration('Email', 'Enter your email'),

                                  ),
                                  // controller: _emailController,
                                  // onSubmitted: (String value) {
                                  //   debugPrint(value);
                                  //
                                  // },

                                  // autofocus: true,
                                  // controller: _emailController,
                                  // decoration: InputDecoration(
                                  //   border:OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(50),
                                  //     borderSide: BorderSide(color: Colors.grey)
                                  //   ),
                                  //   prefixIcon: Icon(Icons.email),
                                  //   suffixIcon: Icon(Icons.visibility_off),
                                  //   hintText: "Enter Your Email",
                                  //   filled: true,
                                  //
                                  //
                                  //   //The other code
                                  // ),
                                  // decoration: ThemeHelper().textInputDecoration('Email', 'Enter your email'),

                                  // keyboardType: TextInputType.emailAddress,
                                  // validator: (val) {
                                  //   if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                                  //     return "Enter a valid email address";
                                  //   }
                                  //   return null;
                                  // },

                                  onChanged: (val){
                                    validateEmail(val);
                                  },

                                ),

                                // decoration: ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(_errorMessage, style: TextStyle(color: Colors.red),),
                              ),
                              SizedBox(height: 30.0),
                              // Container(
                              //   child: TextFormField(
                              //     controller: _passwordController,
                              //     obscureText: true,
                              //     decoration:  InputDecoration(
                              //       //border: OutlineInputBorder(),
                              //       labelText: 'Password*',
                              //       hintText: 'Enter Your Password',
                              //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              //       border:OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(30),
                              //         borderSide: BorderSide(color: Colors.deepPurple),
                              //
                              //
                              //       ),
                              //       //textInputDecoration('Email', 'Enter your email'),
                              //
                              //     ),
                              //
                              //     validator: (val) {
                              //       if (val!.isEmpty) {
                              //         return "This field is required";
                              //       }
                              //       return null;
                              //     },
                              //
                              //     // decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                              //   ),
                              //   // decoration: ThemeHelper().inputBoxDecorationShaddow(),
                              // ),
                              Container(
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration:  InputDecoration(
                                    //border: OutlineInputBorder(),
                                    labelText: 'Password*',
                                    hintText: 'Enter Your Password',
                                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    border:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(color: Colors.deepPurple),


                                    ),),

                                  // decoration: ThemeHelper().textInputDecoration(
                                  //     "Password*", "Enter your password"),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "This field is required";
                                    }
                                    return null;
                                  },
                                ),
                                // decoration: ThemeHelper().inputBoxDecorationShaddow(),
                              ),

                              SizedBox(height: 15.0),
                              Container(
                                margin: EdgeInsets.fromLTRB(10,0,10,20),
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push( context, MaterialPageRoute( builder: (context) => ForgotPasswordPage()), );
                                  },
                                  child: Text( "Forgot password?", style: TextStyle( color: Colors.black, ),
                                  ),
                                ),
                              ),
                              Container(
                                // decoration: ThemeHelper().buttonBoxDecoration(context),


                                child: ElevatedButton(
                                  // style: const ButtonStyle(
                                  //   backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepPurple),
                                  //   shape: ,
                                  //
                                  //
                                  // ),

                                  // style: ElevatedButton.styleFrom(
                                  //     shape: RoundedRectangleBorder(
                                  //       borderRadius: BorderRadius.circular(50),
                                  //
                                  //       side: BorderSide(color: Colors.red)
                                  //     )
                                  //
                                  // ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30.0),
                                          )
                                      )
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Text('Login'.toUpperCase(), style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        ),
                                    ),

                                  ),
                                  onPressed: (){
                                    //After successful login we will redirect to home page. Let's create profile page now
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
                                  },
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                margin: EdgeInsets.fromLTRB(10,20,10,20),
                                child: Text.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(text: "Don\'t have an account? "),
                                          TextSpan(
                                            text: 'Create account',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async{
                                              _signIn();
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                                              },
                                            style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
                                          ),
                                        ]
                                    )
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );

  }

  void validateEmail(String val) {
    if(val.isEmpty){
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    }else if(!EmailValidator.validate(val, true)){
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    }else{
      setState(() {

        _errorMessage = "";
      });
    }
  }

}