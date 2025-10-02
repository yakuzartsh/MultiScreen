

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
   const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final argText = ModalRoute.of(context)!.settings.arguments?.toString() ?? '';

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contact Page'),
          backgroundColor: const Color.fromARGB(255, 207, 27, 27),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.call), text: 'Call'),
              Tab(icon: Icon(Icons.message), text: 'Message'),
              Tab(icon: Icon(Icons.email), text: 'Email'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Call tab — args: $argText')),
            Center(child: Text('Message tab')),
            Center(child: Text('Email tab')),
          ],
        ),
      ),
    );




    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Contact Page'),
    //     backgroundColor: Color.fromARGB(255, 207, 27, 27),
    //   ),
    //   body:  Center(
    //     child: Text(
    //       ModalRoute.of(context)!.settings.arguments?.toString() ?? '',
    //     ),
    //   ),  
    // );
  }
}