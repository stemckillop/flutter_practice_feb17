import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  const Landing({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        color: const Color(0xFFf94664),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 200, height: 220, color:Colors.grey),
              const SizedBox(height: 80,),
              TextButton(style: TextButton.styleFrom(shape: const StadiumBorder(), minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.white, foregroundColor: const Color(0xFFf94664)), onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignIn(),
                    ),
                  );
              }, child: const Text("GET STARTED")),
              TextButton(style: TextButton.styleFrom(shape: const StadiumBorder(), minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.transparent, foregroundColor: const Color(0xffffffff)), onPressed: () {}, child: const Text("SIGN IN"))
            ],
          )),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFf94664),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left:32, right: 32, bottom: 10),
                    child:  Row(children: [
                        Expanded(child: Container(height: 1, color: Colors.grey[200],)),
                        const SizedBox(width: 24,),
                        const Text("SIGN IN", style: TextStyle(color: Color(0xFFf94664), fontWeight: FontWeight.bold, fontSize: 16),),
                        const SizedBox(width: 24,),
                        Expanded(child: Container(height: 1, color: Colors.grey[200],))
                      ],
                    ),),
                    Container(
                      decoration: BoxDecoration(color: const Color(0xfff5f5f7), border: Border.all(color: Color.fromARGB(255, 218, 218, 218))),
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        children: const [
                        Align(alignment: Alignment.centerLeft, child: Text("User Name", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.start,)),
                        TextField(decoration: InputDecoration(border: InputBorder.none), style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromARGB(255, 82, 82, 82)),)
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(color: const Color(0xfff5f5f7), border: Border.all(color: Color.fromARGB(255, 218, 218, 218))),
                      padding: const EdgeInsets.all(8),
                      child: Column(children: const [
                        Align(alignment: Alignment.centerLeft, child: Text("Password", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18), textAlign: TextAlign.start,)),
                        TextField(decoration: InputDecoration(border: InputBorder.none), style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromARGB(255, 82, 82, 82)),)
                      ]),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 64, right: 64, top: 16) ,child: TextButton(style: TextButton.styleFrom(minimumSize: const Size(double.infinity, 50), shape: const StadiumBorder(), backgroundColor: const Color(0xFFf94664), foregroundColor: Colors.white), onPressed: () {}, child: const Text("SIGN IN"))),
                    Padding(padding: const EdgeInsets.only(left: 64, right: 64, bottom: 32) ,child: TextButton(style: TextButton.styleFrom(minimumSize: const Size(double.infinity, 50), shape: const StadiumBorder(), backgroundColor: Colors.white, foregroundColor: Colors.grey[700]), onPressed: () {}, child: const Text("Forgot Password?"))),
                    
                ]
              ),
            )
            
          ],
        ),
      ),
    );
  }
}