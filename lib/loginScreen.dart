import 'package:flutter/material.dart';
import 'package:project1_204841q/mainPage.dart';
import 'package:project1_204841q/register.dart';
import'data/user.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key  key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: non_constant_identifier_names
  TextEditingController controller_email = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController controller_pwd = TextEditingController();
   String passorfail;
     bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('images/Loginpage.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.blue),
                  controller: controller_email,
                  decoration: InputDecoration(
                     errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.purple,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.orange,
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.blue),
                  obscureText: true,
                  controller: controller_pwd,
                  decoration: InputDecoration(
                     errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.purple,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.orange,
                    )),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                  ),
                  onPressed: () {
                    setState((
                    ) {
                      if(person.email== controller_email.text && person.password == controller_pwd.text)
                      {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Main(
                    )),
                                 );
                      }
                      else if(controller_email.text.isEmpty || controller_pwd.text.isEmpty)
                      {
                          _validate = true;
                        passorfail = "Login Failed! Please Check Again!";
                      }
                    });
                  },
                  child: const Text('Login',
                  style: TextStyle(
                     color: Colors.white,
                  ),),
                ),
              ),
              Center(
                child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register(
                                )),
                                 );
                  },
                  child: const Text('Register'
                  ,style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
               const SizedBox(height: 15),
            Text(
                 passorfail == null ? "" : passorfail,
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),
            ),
            ]))));
  }
}