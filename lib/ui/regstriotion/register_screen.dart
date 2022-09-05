import 'package:flutter/material.dart';

import '../../validation-unitls.dart';

class RegisterScreen extends StatefulWidget {
static const String routeName = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
bool securedPassword = true ;
var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text('Create Account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
        body: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.25),
                TextFormField(
                  validator:(text){
                    if(text== null || text.trim().isEmpty){
                      return 'Please Enter Your Full Name';
                    }
                    return null;
                  } ,
                decoration: InputDecoration(
                labelText: 'Full Name'
                  ),
                ),
                TextFormField(
                  validator:(text){
                    if(text== null || text.trim().isEmpty){
                      return 'Please Enter Your User Name';
                    }
                    return null;
                  } ,
                  decoration: InputDecoration(
                      labelText: 'User Name'
                  ),
                ),
                TextFormField(
                  validator:(text){
                    if(text== null || text.trim().isEmpty){
                      return 'Please Enter Your Email-Adrees';
                    }
                    if(!ValidationUtils.isValidatEmail(text)){
                      return 'Please Enter Your Valid Mail';
                    }
                    return null;
                  } ,
                  decoration: InputDecoration(
                      labelText: 'Email-Adrees'
                  ),
                ),
                TextFormField(
                  validator:(text){
                    if(text== null || text.trim().isEmpty){
                      return 'Please Enter Your Password';
                    }
                    if (text.length<6){
                      return 'password Too Weak';

                    }
                    return null;
                  } ,
                  obscureText: securedPassword,
                  decoration: InputDecoration(
                      labelText: 'Password ',
                    suffixIcon: InkWell(
                      onTap: (){
                        securedPassword=!securedPassword;
                        setState(() {
                        });
                      },
                        child: Icon(securedPassword?Icons.visibility:
                        Icons.visibility_off))
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: (){
                  CreatAccountCliked();

                },style: ElevatedButton.styleFrom(primary:
                Colors.white,),
                    child: Text
                  ('Creat '
                    'Account',
                      style: TextStyle(
                  fontSize: 20,color: Colors.grey
                ),)),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),

      ),
    );
  }
  void CreatAccountCliked (){
    if(formKey.currentState?.validate()==false){
      return ;
    }

  }
}
