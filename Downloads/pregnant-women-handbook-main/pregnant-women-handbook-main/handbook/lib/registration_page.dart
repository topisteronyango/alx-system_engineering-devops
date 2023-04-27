import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handbook/themes/themes_helper.dart';
import 'login.dart';
import 'package:email_validator/email_validator.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;

class RegistrationPage extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage>{

  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _success;
  late String _userEmail;

  void _register() async {
    final User? user = (
    await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
    ).user;
    if (user != null){
      setState(() {
        _success = true;
        _userEmail = user.email!;
      });
    } else {
      setState(() {
        _success = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Container(
              margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Create new account',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 30.0),

                        SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
                            decoration:  InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'First Name',
                              hintText: 'Enter Your First Name',
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.deepPurple),


                              ),
                              //textInputDecoration('Email', 'Enter your email'),

                            ),
                            // decoration: ThemeHelper().textInputDecoration('First Name', 'Your First Name'),
                          ),
                          // decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
                            decoration:  InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'Last Name',
                              hintText: 'Enter Your Last Name',
                              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.deepPurple),


                              ),
                              //textInputDecoration('Email', 'Enter your email'),

                            ),
                            // decoration: ThemeHelper().textInputDecoration('Last Name', 'Your Last Name'),
                          ),
                          //decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            controller: _emailController,
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

                            // decoration: ThemeHelper().textInputDecoration("E-mail address", "Enter your email"),
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if(!(val!.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(val)){
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          // decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),

                        SizedBox(height: 20.0),
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
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    Text("I accept all terms and conditions.", style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          // decoration: ThemeHelper().buttonBoxDecoration(context),

                          child: ElevatedButton(
                            // style: ThemeHelper().buttonStyle(),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    )
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "Register".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            onPressed: () async {
                              _register();
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()
                                    ),
                                        (Route<dynamic> route) => false
                                );
                              }
                              },
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                  'Go Back',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'arial',
                                      //fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline
                                  )
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }
}