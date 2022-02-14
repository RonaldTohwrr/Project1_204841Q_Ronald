import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'LoginScreen.dart';
import 'data/user.dart';

class Register extends StatefulWidget {
  const Register({ Key key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ignore: non_constant_identifier_names
  TextEditingController controller_email = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController controller_pwd = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController controller_conpwd = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController controller_user = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController controller_mobile = TextEditingController();
   bool _validate = false;
   String passorfail;
  @override
  Widget build(BuildContext context) {
 return Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
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
                 Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                   style: const TextStyle(
                    color: Colors.blue),
                  obscureText: true,
                  controller: controller_conpwd,
                  decoration: InputDecoration(
                    errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'Confirm Password',
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
                  controller: controller_user,
                  decoration: InputDecoration(
                     errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'User',
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
                  controller: controller_mobile,
                  keyboardType: TextInputType.number,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                     errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'Mobile',
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
                      if(controller_pwd.text == controller_conpwd.text)
                      {
                        _validate = false;
                        person.email= controller_email.text;
                        person.name = controller_user.text;
                        person.password = controller_pwd.text;
                        person.number = controller_mobile.text;
                        passorfail = "Sucessfully Registered!";
                    }
                    else if(controller_email.text.isEmpty||controller_pwd.text.isEmpty||controller_conpwd.text.isEmpty||controller_user.text.isEmpty||controller_mobile.text.isEmpty)
                    {
                      _validate = true;
                      passorfail = "Registeration Failed! Please Check Again!";
                    }
                 });
                      
                  },
                  child: const Text('Register'),
                ),
              ),
               const SizedBox(height: 15),
            Text(
                 passorfail == null ? "" : "${passorfail}",
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),
            ),
            

            ]))));
  }
}