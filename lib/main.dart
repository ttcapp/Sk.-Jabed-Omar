import 'package:flutter/material.dart';
import 'package:jewel_demo/profile.dart';
import 'package:slide_drawer/slide_drawer.dart';
void main() {
  runApp(MyApp());
}

double conheight=100;
double conwidth=100;
class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);

  final navigatorKey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        backgroundColor: Colors.green.shade700,
        items: [
          MenuItem('Home',icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Project',icon: Icons.ac_unit ,
              onTap: (){}),
          MenuItem('Favourite',icon: Icons.add_to_photos,
              onTap: (){}),
          MenuItem('Profile',icon: Icons.work,
              onTap: (){
            navigatorKey.currentState!.
            push(MaterialPageRoute(builder: (context)=>Profile()));
              }),
          MenuItem('Setting',icon: Icons.account_circle_rounded,
              onTap: (){}),
        ],
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        title: Text("App Bar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
             onTap: (){
        setState(() {
          conheight=300;
          conwidth=300;
        });
      },
              onDoubleTap: (){
                setState(() {
                  conheight=100;
                  conwidth=100;
                });
              },
              child: AnimatedContainer(
                height: conheight,
                width: conwidth,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
                      ),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(170),
                  border: Border.all(color: Colors.black,width: 4)
                ),
                duration: Duration(milliseconds: 4000),
              ),
            ),
            Image.asset("assets/image/image2.jpeg"),
            Image.asset("assets/image/png.png"),
            Image.asset("assets/image/image3.jpeg"),
            Image.asset("assets/image/image4.jpeg"),
            Image.asset("assets/image/imge5.jpg"),
          ],
        ),
      ),
    );
  }
}
