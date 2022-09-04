import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
static const String routeName = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
bool SecuredPassword = true ;

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
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.25),
                TextFormField(
                decoration: InputDecoration(
                labelText: 'Full Name'
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'User Name'
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email-Adrees'
                  ),
                ),
                TextFormField(
                  obscureText: SecuredPassword,
                  decoration: InputDecoration(
                      labelText: 'Password ',
                    suffixIcon: InkWell(
                      onTap: (){
                        SecuredPassword=!SecuredPassword;
                        setState(() {
                        });
                      },
                        child: Icon(SecuredPassword?Icons.visibility:
                        Icons.visibility_off))
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: (){

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
}
