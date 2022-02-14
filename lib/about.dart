import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'bmiCalculator.dart';
import 'profile.dart';
import 'mainPage.dart';
import 'instructor.dart';
class About extends StatefulWidget {
  const About({ Key key }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                            builder: (context) =>const Main(
                              
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
                            builder: (context) =>const BmiCal(
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
                            builder: (context) =>const Profile(
                                )),
                      ),
                  child: _listview(
                     images: "images/menu2.jpg", 
                     text: "Profile"),
                   ),         
                ],
                ),
              ),
              const Text("About Us",
              style: 
              TextStyle(
                 fontSize: 20,
                color: Colors.red),
              ),
               const SizedBox(height:10),
              Container(
                height: 250,
                width: 450,
                child: Image.asset("images/About1.jpg")
              ),
               const SizedBox(height:10),
              const Text("ALL IN ONE Free Fitness App",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
              const SizedBox(height:10),
              const Text(" We decided to make a multi-functional app\n that allows you to do all the fitness activities, \n calculate your bmi and provide you with diet \n plans that will introduce healthy food into your \n system daily!",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
                const SizedBox(height:30),
              Container(
                height: 350,
                width: 550,
                child: Image.asset("images/About2.jpg")
              ),
              const SizedBox(height:10),
              const Text("Tons Of Variety of Diet Plan or Recipes! \n\n Diet plans and recipes have gone through \n under alot of consideration for those with \n allegys or with Special Diets!",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                
              ),
              ),
               const SizedBox(height:50),
               const  Text("Meet Some Of Our Special Instructors",
              style: 
              TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
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
                            builder: (context) =>const Instructor(
                              name: "Andy Strongman",
                              images: "images/Andy.jpg",
                              decsription: "Fitness Trainer",
                                email: "AndyStrong@gmail.com",
                                )),
                      ),
                    child: _listview(
                      images: "images/Andy.jpg", 
                      text: "Andy Strongman"
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
                            builder: (context) =>const Instructor(
                              name: "Sarah Carter",
                              images: "images/Sarah.jpg",
                              decsription: "Fitness Trainer",
                                email: "SarahCart@gmail.com",
                                )),
                      ),
                   child: _listview(
                     images: "images/Sarah.jpg", 
                     text: "Sarah Carter"),
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
                              name: "Eric Hammond",
                              images: "images/Eric.jpg",
                              decsription: "Fitness Trainer / Body Builder",
                                email: "EricHam@gmail.com",
                                )),
                      ),
                    child: _listview(
                      images: "images/Eric.jpg", 
                      text: "Eric Hammond"),
                   ),
                    const SizedBox(
                    width: 20
                  ),
                   GestureDetector(
                    onTap: () =>
                     Navigator.push(
                        context,
                      MaterialPageRoute(
                            builder: (context) => const Instructor(
                              name: "Katy Cantona",
                              images: "images/Katy.jpg",
                              decsription: "Yoga Expert",
                              email: "KatyCat@gmail.com",
                                )),
                      ),
                  child: _listview(
                     images: "images/Katy.jpg", 
                     text: "Katy Cantona"),
                   ),
                ],
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                child:const  Text(
                  "Contact us",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed:()=> launchEmail()),
                 const SizedBox(height: 30)

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
  final url = 'mailto:AI1Fitness@gmail.com?subject=${Uri.encodeFull("I got a Question to Ask!")}&body=${Uri.encodeFull("")}';

 launch(url);
}
