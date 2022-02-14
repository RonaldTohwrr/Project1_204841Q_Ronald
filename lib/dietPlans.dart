import 'package:flutter/material.dart';
import 'about.dart';
import 'bmiCalculator.dart';
import 'profile.dart';
import 'mainPage.dart';
import 'instructor.dart';
import 'package:url_launcher/url_launcher.dart';


class DietPlans extends StatefulWidget {
  const DietPlans({ Key key }) : super(key: key);

  @override
  _DietPlansState createState() => _DietPlansState();
}

class _DietPlansState extends State<DietPlans> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
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
                            builder: (context) =>const Instructor(
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
              const Text("Check out our plans below!",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
              const SizedBox(height: 30),
              const Text("Weight Lost Plan",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),),
               GestureDetector(
                onTap: ()=> launchLink("https://www.verywellfit.com/easy-weight-loss-meal-plans-3495471"),
                child:
                 Container(
                height: 250,
                width: 450,
                child: Image.asset("images/diet1.jpg"),
              ),
             ),

              const SizedBox(height: 30),
              const Text("Bulking Meal Plan",
              style: 
             TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),),
               GestureDetector(
                onTap: ()=> launchLink("https://www.maximuscle.com/sports/bodybuilding/4-Week-Bulking-Transformation-Diet/"),
                child:
                 Container(
                height: 250,
                width: 450,
                child: Image.asset("images/diet2.jpg"),
              ),
             ),

             const SizedBox(height: 30),
              const Text("More to be Added!",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
              const SizedBox(height: 30),
              
            ],),
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

void launchLink(String durl)
{
  final url = durl;
 launch(url);
}
