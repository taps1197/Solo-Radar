import 'package:flutter/material.dart';
import 'package:soloradarapp/srceens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  static const routeName ='/Signup';
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints){
              return Container(
                padding: const EdgeInsets.all(15),
                color: Colors.grey[200],
                width: double.infinity,
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('images/logo.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 37,),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Text(
                                  'Create account now to lorem ipsum dolor emit sol',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 50,),
                          TextField(
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Mobile No.',
                              contentPadding: const EdgeInsets.all(15),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                   Checkbox(
                                     value: checkBoxValue,
                                     onChanged: (bool value){
                                       checkBoxValue=value;
                                     },
                                   ),
                                   Text(
                                    'I agree to Terms and Conditions',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0)
                                  ),
                                  child: Container(
                                    constraints: BoxConstraints(maxWidth: 160.0, minHeight: 45.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "SIGN UP",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Text(
                                      ' We will send you a one time SMS message. Charges may applied.',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 60,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(" Have an account ?",style: TextStyle(fontSize: 18),),
                                  FlatButton(child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(LoginScreen.routeName);
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              );
            },
          )
      ),
    );
  }
}
