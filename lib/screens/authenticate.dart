import 'package:flutter/material.dart';
import 'package:toggle_tab_bar/screens/login.dart';
import 'package:toggle_tab_bar/screens/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  int index = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey[800]!,
                  width: 1,
                ),
              ),
              child: const Icon(Icons.arrow_back,
                  // color: Theme.of(context).colorScheme.onBackground)),
                  color: Colors.white)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text("Go ahead and set up your account",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    const SizedBox(height: 10),
                    Text(
                        "The ultimate task management app designed to streamline your workflow and supercharge your productivity",
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: _toggleTabBar(index),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
              ),
              child: PageView(
                controller: _pageController,
                children: _authPages,
                onPageChanged: (int index) {
                  setState(() {
                    this.index = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomAppBar(),
    );
  }

  static const List<Widget> _authPages = <Widget>[
    LogIn(),
    Register(),

    // Login(),
    // Register(),
  ];
}

Widget _toggleTabBar(int index) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(40),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: index == 0
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(1, 0),
                        ),
                      ],
                    ),
                    child: const Center(child: Text("Login")),
                  )
                : Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Center(child: Text("Login")),
                  ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: index == 1
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1, 0),
                          ),
                        ],
                      ),
                      child: const Center(child: Text("Register")),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(child: Text("Register")),
                    )),
        ),
      ],
    ),
  );
}
