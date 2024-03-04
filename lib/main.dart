import 'package:flutter/material.dart';
import 'package:toggle_tab_bar/screens/authenticate.dart';
import 'package:toggle_tab_bar/theme/theme.dart';
import 'package:toggle_tab_bar/widgets/primary_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const GetStarted(),
      routes: {
        '/home': (context) => const GetStarted(),
        '/authenticate': (context) => const Authenticate(),
      },
    );
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                'Effortlessly Manage Your Tasks and Boost Productivity',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 10),
            Text(
                "The ultimate task management app designed to streamline your workflow and supercharge your productivity",
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 20),
            PrimaryButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Authenticate()));
                }),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
