import "package:flutter/material.dart";

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            child: const Text("Welcome to Travel The World!",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    decoration: TextDecoration.none)),
          ),
          Container(
              margin: const EdgeInsets.only(top: 50),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blue.shade800),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0)))),
                          onPressed: () {},
                          child: const Text("Log In"))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0)))),
                          onPressed: () {},
                          child: const Text("Register",
                              style: TextStyle(color: Colors.white)))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      side:
                                          const BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(0)))),
                          onPressed: () {},
                          child: const Text(
                            "Continue as Guest",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ))),
                ],
              ))
        ]));
  }
}
