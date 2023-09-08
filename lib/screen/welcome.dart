import 'package:flutter/material.dart';
import 'package:slack_identify/tools/delayed.dart';
import 'package:slack_identify/screen/home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 180,
            horizontal: 50,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 500,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 40,
                  ),
                  child: Text(
                    'Slack Profile',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 1000,
                child: SizedBox(
                  width: 250,
                  child: Image.asset(
                    'images/slack_logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    bottom: 50,
                  ),
                  child: Text(
                    'Welcome to my Slack Profile App',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2000,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.all(15)),
                    child: Text(
                      'Get Start',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ),
              ),              
            ],
          ),
        ),
      ),
    );
  }
}
