import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';
import 'bmiCalculator.dart';
import 'profile.dart';
import 'instructor.dart';
import 'dietPlans.dart';
import'data/user.dart';
class Main extends StatefulWidget {
  const Main({ Key key, } ) : super(key: key);
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
 
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:  SingleChildScrollView(
        child:Column(
            children: <Widget> [
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
              Text("Welcome,"+ person.name,
              style: 
              const TextStyle(
                 fontSize: 20,
                color: Colors.red),
              ),
                const SizedBox(height:10),
                  const Text("Find Our Locations!",
                style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
                ),
              GestureDetector(
                onTap: ()=> launchEmail(),
                child:
                 Container(
                height: 250,
                width: 450,
                child: Image.asset("images/About1.jpg"),
              ),
                ),
                
            
              
              const SizedBox(height:30),
              const Text("Check out our Diet Plans!",
              style: 
              TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              GestureDetector(
                 onTap: () =>
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const DietPlans(
                                )),
                      ),
               child: Container(
                 height: 250,
                width: 450,
                child: Image.asset("images/diet1.jpg"),
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
void launchEmail()
{
  const  url = 'https://www.google.com/maps/place/Block+735+HDB+Yishun/@1.4287331,103.8313367,19.91z/data=!4m5!3m4!1s0x31da14706f316729:0x4398c644f89dd435!8m2!3d1.4288596!4d103.8312551';
 launch(url);
}
