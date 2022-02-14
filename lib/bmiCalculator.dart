import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'about.dart';
import 'profile.dart';
import 'mainPage.dart';
import 'instructor.dart';
class BmiCal extends StatefulWidget {
  const BmiCal({ Key key }) : super(key: key);

  @override
  _BmiCalState createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
    final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;
  String _bmirange;
  String _advice;
  bool _validate = false;

  @override
  void dispose() {
    _heightController.dispose();
    super.dispose();
    _weightController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
child: Scaffold(
        backgroundColor: Colors.black,
        body:  SingleChildScrollView(
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
              const Text("BMI Calculator",
              style: 
              TextStyle(
                 fontSize: 20,
                color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.blue),
                  controller: _heightController,
                   keyboardType: TextInputType.number,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'Height(cm)',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
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
            const SizedBox(height: 20),
             Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                      style: const TextStyle(
                    color: Colors.blue),
                  controller: _weightController,
                   keyboardType: TextInputType.number,
                   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                     errorText: _validate ? "Value Cannot Be Empty" : null,
                    hintText: 'Weight(Kg)',
                    hintStyle:const  TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.blue,
                    ),
                    enabledBorder:const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.orange,
                    )),
                  ),
                ),
              ),
            
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
              ),
                child:const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                setState(() {
                  if(_heightController.text.isEmpty ||_weightController.text.isEmpty)
                  {
                    _validate = true;
                  }
                  else{
                    _validate =false;
                    calculateBMI();
                  }
                });
              },
              
            ),
           const SizedBox(height: 15),
            Text(
                 _result == null ? "Enter Value" : "Your Bmi is ${_result.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),
            ),
            const  SizedBox(height: 15),
            Text(
                 _bmirange == null ? "" : "Your Range is in ${_bmirange}",
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),
            ),

             const SizedBox(height: 15),
            Text(
                 _advice == null ? "" : _advice,
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
                ),
            ),
            ],
          ),
        ),
),
    );
  }
   void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    if (result < 18.5)
    {
      _bmirange = "Underweight";
      _advice = "Try to bulk it up!";
    }
    else if(result >= 18.5 && result <= 24.9)
    {
      _bmirange = "Normal Weight";
      _advice = "Good Job! Keep It Up!";
    }
    else if(result >= 25 && result <= 29)
    {
      _bmirange = "Overweight";
      _advice = "Oops, Looks like you need to lose some!";
    }
      else if(result >30)
    {
      _bmirange = "Obesity";
      _advice = "Please Try To Lose Some, Your Life Is In Danger!";
    }


    setState(() {});
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
