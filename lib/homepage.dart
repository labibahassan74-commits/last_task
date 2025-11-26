import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _login() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            cursorColor: const Color.fromARGB(255, 175, 125, 9),
            decoration: InputDecoration(
              labelText: 'enter a word to pass it :',
              hintText: 'labiba',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            controller: _controller1,
          ),
        ),

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'enter ',
              hintText: 'labiba',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            controller: _controller2,
            readOnly: true,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _login();
          },
          child: Text(
            "submit",
            style: TextStyle(color: const Color.fromARGB(255, 175, 125, 9)),
          ),
        ),

        //   ElevatedButton(onPressed: (){
        //     _Navagitor();
        //   }, child: Text("navgitor"))
        // ],
      ],
    );
  }
}
