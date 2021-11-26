import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    // simulate network request
    await Future.delayed(const Duration(seconds: 3), () {
      print("finished");
    });

    // simulate network request to get data
    Future.delayed(const Duration(seconds: 2), () {
      print("data has arrived");
    });
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();

    getData();

    print("initState ran");
  }

  @override
  Widget build(BuildContext context) {
    print("build ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber)),
          child: Text("$counter")),
    );
  }
}
