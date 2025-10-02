import 'package:flutter/material.dart';
import 'screens/contact_page.dart';
import 'screens/about_page.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        
        '/contact': (context) => const ContactPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiScreenApp'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'About',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/about', arguments: 'Hello from Home Page for about page');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/contact', arguments: 'Hello from Home Page for Contact page');
          }
        },
      ),  


      // drawer: SizedBox(
      //   width: 200,
      //   child: Drawer(
      //     child: ListView(
      //       padding: EdgeInsets.zero,
      //       children: [
      //         const DrawerHeader(
      //           decoration: BoxDecoration(
      //             color: Colors.deepOrangeAccent,
      //           ),
      //           child: Text('Menu'),
      //         ),
      //         ListTile(
      //           title: const Text('About Page'),
      //           onTap: () {
      //             Navigator.pushNamed(context, '/about',arguments : 'Hello from Home Page for about page');
      //           },
      //         ),
      //         ListTile(
      //           title: const Text('Contact Page'),
      //           onTap: () {
      //             Navigator.pushNamed(context, '/contact',arguments : 'Hello from Home Page for Contact page');
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Center(
        child: Text("Welcome to multiScreen App")
  
      ) 
      
    );
  }
}