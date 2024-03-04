import 'package:flutter/material.dart';
import 'package:toggle_tab_bar/widgets/custom_textfield.dart';
import 'package:toggle_tab_bar/widgets/primary_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            text: "Register",
            onPressed: () {
              _showModalBottomSheet(context);
            },
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
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            isChecked = value!;
          }),
      const SizedBox(width: 5),
      const Text("Remember me", style: TextStyle(fontSize: 14))
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
      Text("Or Register With",
          style: TextStyle(fontSize: 14, color: Colors.grey)),
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

_showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Icon(Icons.alternate_email_rounded, size: 100),
                const SizedBox(height: 30),
                const Text("Verify your email",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text(
                    "We have sent a verification link to your email. Please verify your email to continue",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center),
                const SizedBox(height: 20),
                CustomTextField(
                    labelText: "Enter Your Verification Code",
                    leadingIcon: Icons.check_circle_outline_rounded),
              ],
            ),
          ),
        );
      });
}
