import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';
import 'bmiCalculator.dart';
import 'profile.dart';
import 'mainPage.dart';

class Instructor extends StatefulWidget {
  final String name;
  final String images;
  final String decsription;
  final String email;
  const Instructor({ Key key,this.name, this.images,  this.decsription, this.email}) : super(key: key);

  @override
  _InstructorState createState() => _InstructorState();
}

class _InstructorState extends State<Instructor> {
  @override
  Widget build(BuildContext context) {
    
  String iname;
   String iimages;
   String idecsription;
   String iemail;

   iname = widget.name;
   iimages = widget.images;
   idecsription = widget.decsription;
   iemail = widget.email;
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
              const Text("Instructors",
              style: 
              TextStyle(
                 fontSize: 20,
                color: Colors.red),
              ),
                const SizedBox(height:10),
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
                            builder: (context) => const Instructor(
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
                            builder: (context) =>const Instructor(
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
              _displayInstructor(instrucprofilepic: iimages, name: iname, description: idecsription),
             
              const SizedBox(height: 30,),
              ElevatedButton(
                child: const Text(
                  "Contact us",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed:()=> launchEmail(iemail)),
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
        style:const  TextStyle(
          color: Colors.white
        ),
        ),
    ],
  );
}
Widget _displayInstructor({@required String instrucprofilepic,@required String name,@required String description})
{
  if(instrucprofilepic == null && name == null && description == null)
  {
    instrucprofilepic = "images/Andy.jpg";
    name = "Andy Strongman";
    description = "Fitness Trainer";

  }

  return Column(
    children: [
         Container(
                height: 250,
                width: 450,
                child: Image.asset(instrucprofilepic)
              ),
               const  SizedBox(height:10),
              Text(name,
              style: 
              const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
              const SizedBox(height:10),
              Text(description,
              style: 
              const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              ),
          
    ],
  );
}
  void launchEmail(String email)
{
  final url = 'mailto:$email?subject=${Uri.encodeFull("I got a Question to Ask!")}&body=${Uri.encodeFull("")}';

 launch(url);
}