import 'package:flutter/material.dart';
import 'homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color.fromARGB(255, 1, 13, 24),
                  Color.fromARGB(255, 1, 3, 17)
                ])),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Center(
                      child: Icon(
                        Icons.local_fire_department_rounded,
                        size: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'BlueFire',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 23, 107, 202),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "Sign in to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Form(
                        child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter username',
                            border: myinputborder(),
                            enabledBorder: myinputborder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          onChanged: (String value) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter password',
                            suffixIcon: const Icon(Icons.visibility_off),
                            border: myinputborder(),
                            enabledBorder: myinputborder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          onChanged: (String value) {},
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            elevation: 5.0,
                            minWidth: double.infinity,
                            height: 60,
                            color: Colors.blueAccent,
                            child: const Text('Sign in',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Homapage()));
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            '- Or continue with -',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 7, 38, 78),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: MaterialButton(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    onPressed: () {},
                                    color: Colors.white,
                                    height: 70,
                                    minWidth: 65,
                                    child: const Icon(
                                      Icons.facebook,
                                      size: 50,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: MaterialButton(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    onPressed: () {},
                                    color: Colors.white,
                                    height: 70,
                                    minWidth: 65,
                                    child: const Icon(
                                      Icons.email,
                                      size: 50,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(' Forgot password?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ],
                    )),
                  )
                ],
              )),
            )));
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return const OutlineInputBorder(
    //Outline border type for TextFeild
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}
