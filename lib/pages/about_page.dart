import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "21880284",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.grey,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),

            const SizedBox(height: 20,),

            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                "Taxi Dispatch - 21880284",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),

        const SizedBox(height: 10,),

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "In case of any misuse or report, please contact vudinhbaouyen@gmail.com",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
      ],
        ),
      ),
    );
  }
}
