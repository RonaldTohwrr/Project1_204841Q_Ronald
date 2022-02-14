import 'package:flutter/material.dart';
import 'about.dart';
import 'bmiCalculator.dart';
import 'mainPage.dart';
import 'instructor.dart';
import 'loginScreen.dart';
import 'data/user.dart';
import 'updateProfile.dart';
class Profile extends StatefulWidget {
  const Profile({ Key key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:  Column(
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
              Text("Hello! "+ person.name,
            style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),),
                const SizedBox(height: 50,),
              Text("Email: "+person.email,
            style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),),
                const SizedBox(height: 50,),
            Text("Username: "+person.name,
            style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),),
                 const SizedBox(height: 50,),
            Text("Phone Number: +65"+person.number,
            style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),),
                 const SizedBox(height: 50,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UpdateProfile(
                                )),
                                 );
                  },
                  child: const Text('Update'),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                  ),
                child: const Text(
                  "Logout"),
                onPressed: ()=>
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const LoginPage()))
             
              ),
            ],
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