import 'package:flutter/material.dart';
import 'package:toggle_tab_bar/widgets/custom_textfield.dart';
import 'package:toggle_tab_bar/widgets/primary_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CustomTextField(
            labelText: "Email",
            leadingIcon: Icons.alternate_email,
          ),
          const SizedBox(height: 10),
          CustomTextField(
            labelText: "Password",
            leadingIcon: Icons.lock_outline_rounded,
            obscureText: true,
            isPassword: true,
          ),
          _subTextField(),
          const SizedBox(height: 10),
          PrimaryButton(
            text: "Login",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          _divider(),
          const SizedBox(height: 20),
          _socialMediaLogin(),
        ],
      ),
    );
  }
}

Row _subTextField() {
  bool isChecked = false;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                isChecked = value!;
              }),
          const SizedBox(width: 5),
          const Text("Remember me", style: TextStyle(fontSize: 14)),
        ],
      ),
      TextButton(
        onPressed: () {},
        child: const Text("Forgot Password?", style: TextStyle(fontSize: 14)),
      ),
    ],
  );
}

Row _divider() {
  return const Row(
    children: [
      Expanded(
        child: Divider(
          color: Colors.grey,
        ),
      ),
      SizedBox(width: 10),
      Text("Or Login With", style: TextStyle(fontSize: 14, color: Colors.grey)),
      SizedBox(width: 10),
      Expanded(
        child: Divider(
          color: Colors.grey,
        ),
      ),
    ],
  );
}

Row _socialMediaLogin() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Center(
            child: Chip(
              label: const Text("Google",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              avatar: Image.asset("lib/images/google.png"),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      )),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Center(
            child: Chip(
              label: const Text("Apple",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              avatar: Image.asset("lib/images/apple.png"),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      )),
    ],
  );
}
