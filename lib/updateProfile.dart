import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data/user.dart';
import 'about.dart';
import 'bmiCalculator.dart';
import 'mainPage.dart';
import 'profile.dart';
import 'instructor.dart';
class UpdateProfile extends StatefulWidget {
  const UpdateProfile({ Key key }) : super(key: key);

  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  // ignore: non_constant_identifier_names
  TextEditingController controller_email = TextEditingController(text: person.email);
  // ignore: non_constant_identifier_names
  TextEditingController controller_pwd = TextEditingController(text: person.password);
  // ignore: non_constant_identifier_names
  TextEditingController controller_conpwd = TextEditingController(text: person.password);
  // ignore: non_constant_identifier_names
  TextEditingController controller_user = TextEditingController(text: person.name);
  // ignore: non_constant_identifier_names
  TextEditingController controller_mobile = TextEditingController(text: person.number);
   bool _validate = false;
   String passorfail;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
        child:Column(
            children: [
              Container(
                height: 200,
                width: 600,
               child: ListView(
                padding: const EdgeInsets.all(20) ,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () =>
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Main(
                              
                                )),
                      ),
                    child: _listview(
                      images: "images/menu1.jpg", 
                      text: "Home"
                       ),
                  ),
                 const SizedBox(
                    width: 20
                  ),
                  GestureDetector(
                    onTap: () =>
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BmiCal(
                                )),
                      ),
                   child: _listview(
                     images: "images/menu2.jpg", 
                     text: "BMI Calculator"),
                  ),
                   const SizedBox (
                    width: 20
                  ),
                   GestureDetector(
                    onTap: () =>
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const About(
                                )),
                      ),
                    child: _listview(
                      images: "images/menu3.jpg", 
                      text: "About"),
                   ),
                   const SizedBox (
                    width: 20
                  ),
                   GestureDetector(
                    onTap: () =>
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Instructor(
                                )),
                      ),
                    child: _listview(
                     images: "images/menu4.jpg", 
                      text: "Instructors"),
                   ),
                    const SizedBox(
                    width: 20
                  ),
                   GestureDetector(
                    onTap: () =>
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile(
                                )),
                      ),
                  child: _listview(
                     images: "images/menu2.jpg", 
                     text: "Profile"),
                   ),         
                ],
                ),
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
                    focusedBorder:const  OutlineInputBorder(
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
                    enabledBorder:const  OutlineInputBorder(
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
                   style: const  TextStyle(
                    color: Colors.blue),
                  controller: controller_user,
                  decoration: InputDecoration(
                     errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'User',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.purple,
                    ),
                    enabledBorder:const  OutlineInputBorder(
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
                       Navigator.push(context, 
                       MaterialPageRoute(builder: (context)=>const Profile()));
                    }
                    else if(controller_email.text.isEmpty||controller_pwd.text.isEmpty||controller_conpwd.text.isEmpty||controller_user.text.isEmpty||controller_mobile.text.isEmpty)
                    {
                      _validate = true;
                      passorfail = "Update Failed! Please Check Again!";
                    }
                 });
                },
                child: const Text('Update Profile',),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

Widget _listview({@required String images,@required String text})

{
  return Column(
      children: <Widget>[
          CircleAvatar(
        radius:50,
        backgroundColor: Colors.blue[50],
        backgroundImage: AssetImage(images),
      ),
        Text(text,
        style: const TextStyle(
          color: Colors.white
        ),
        ),
    ],
  );
}