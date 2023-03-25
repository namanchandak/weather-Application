import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

////////material app stateless
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      theme: ThemeData.dark(),
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("How's the Sky"),
          //color:Colors.red;
        ),
///////image
        ///flutter clean
        ///flutter pub get
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/img.png'),
            fit: BoxFit.fill,
          )),
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 200,
                  color: Colors.black26,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 32,
                          ),
                          Text(
                            "Indore",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ////alt 0176
                          Text(
                            "31°",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),

                          ),
                          Icon(Icons.sunny, size: 24, color: Colors.yellow),
                        ],
                      ),

                          Text("Few Clouds",
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
                          ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Updated on",
                          style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold ) ,
                          )


                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  height: 150,
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.water_drop_outlined),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Humidity",
                          style: TextStyle(fontSize: 24),),
                          Text("33%",
                            style: TextStyle(fontSize: 15),
                          ),

                        ],
                      ),



                      Icon(Icons.remove_red_eye_outlined),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Visibility",
                            style: TextStyle(fontSize: 24),),
                          Text("6000Km",
                            style: TextStyle(fontSize: 15),
                          ),



                        ],
                      ),




                      Icon(Icons.monitor_weight_outlined),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("pressuer",
                            style: TextStyle(fontSize: 24),),
                          Text("1011Pa",
                            style: TextStyle(fontSize: 15),
                          ),



                        ],
                      ),






                    ],



                  ),






                ),
//////////////3rd containor
                Container(
                  height: 150,
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomRow(icon: Icons.wind_power_outlined,title: "Wind",value: "3m/s",),
                      CustomRow(icon: Icons.wind_power_outlined,title: "Min Temp",value: "32",),
                      CustomRow(icon: Icons.wind_power_outlined,title: "Wind",value: "3m/s",),

                    ],
                  ),






                )


              ],
            ),
          ),
        ));
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key, required this.icon, required this.title, required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Icon(icon),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
              style: TextStyle(fontSize: 24),),
            Text(value,
              style: TextStyle(fontSize: 15),
            ),

          ],
        ),


      ],

    );
  }
}
