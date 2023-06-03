import 'package:flutter/material.dart';
import 'package:hotmusic/views/screens/home/home_screen.dart';
import 'package:hotmusic/views/widgets/custom_button.dart';
import 'package:hotmusic/views/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscurePassword = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: maxHeight / 6,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomTextField(
              controller: usernameController,
              label: "Username",
              suffixIcon: Icon(Icons.person_outlined),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomTextField(
              controller: passwordController,
              label: "Password",
              obscured: obscurePassword,
              prefixIcon: IconButton(
                icon: Icon(obscurePassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
                onPressed: () {
                  //hide/visible password
                  setState(() {
                    obscurePassword = !obscurePassword;
                  });
                },
              ),
              suffixIcon: Icon(Icons.password_outlined),
            ),
          ),
          CustomButton(
            padding: EdgeInsets.all(20),
            borderRadius: BorderRadius.circular(10),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}
