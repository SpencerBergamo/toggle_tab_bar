import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData leadingIcon;
  final IconData? trailingIcon;
  bool obscureText;
  final bool isPassword;

  CustomTextField(
      {super.key,
      required this.labelText,
      required this.leadingIcon,
      this.trailingIcon,
      this.obscureText = false,
      this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        label: Text(widget.labelText),
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        prefixIcon: Icon(widget.leadingIcon,
            color: Theme.of(context).colorScheme.primary),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                icon: widget.obscureText
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              )
            : null,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
