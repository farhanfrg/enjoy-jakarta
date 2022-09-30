import 'package:enjoyjakarta/theme_setup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  final String title;
  const LoginScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefafa),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
              child: Image.asset(
                'assets/images/mainlogo.png',
                width: 288,
                height: 100,
                fit: BoxFit.cover,
              ),
            ), // Main Logo
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Email")],
              ),
            ), // Email Text Field Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Ketik disini",
                  hintStyle: TextStyle(color: themeSetup.secondaryTextColor),
                  filled: true,
                  fillColor: themeSetup.textFieldColor,
                ),
              ),
            ), // Email Text Field
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Kata Sandi")],
              ),
            ), // Password Text Field Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "******",
                  hintStyle: TextStyle(color: themeSetup.secondaryTextColor),
                  filled: true,
                  fillColor: themeSetup.textFieldColor,
                ),
              ),
            ), // Password Text Field
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Ingat saya"),
                    ],
                  ),
                  Icon(Icons.error_outline),
                  Text(" Kata sandi anda salah")
                ],
              ),
            ), // Alert
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () async {
                    print("Button Pressed");
                    var url = Uri.https('devgeosys.com', 'api/token', {
                      "email": "andi@gmail.com",
                      "password": r"Sup3rsecret$Passw0rd!",
                      "device_name": "coba"
                    });
                    var response = await http.post(url);
                    print(url);
                    print('Response status: ${response.statusCode}');
                    print('Response body: ${response.body}');
                  },
                  child: const Text("Login"),
                ),
              ),
            ), //Login Button
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 1,
                          endIndent: 10,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('atau'),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 1,
                          indent: 10,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Atau Divider
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    print("Button Pressed");
                  },
                  child: const Text("Login melalui Google"),
                ),
              ),
            ), // Google Login Divider
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Tidak memiliki akun?"),
                  const Text(" Daftar Sekarang")
                ],
              ),
            ), //Registrasi Path
          ],
        ),
      ),
    );
  }
}
