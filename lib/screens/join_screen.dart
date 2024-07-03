// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  bool valueFirst = false; // Define the boolean variable
  final TextEditingController _name = TextEditingController();
  String? _selectedProfession;
  String? _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  // decoration: BoxDecoration(boxShadow: [
                  //   BoxShadow(
                  //       color: Color.fromARGB(66, 164, 150, 150),
                  //       blurRadius: 5,
                  //       blurStyle: BlurStyle.normal,
                  //       spreadRadius: 5)
                  // ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/Pracas_sir.jpg'),
                      radius: 85,
                    ),
                  ),
                ),
                const Text(
                  'Become a Professional',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('NPR 1,999/- Yearly'),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _name,
                    decoration: InputDecoration(
                      labelText: 'Full Name *',
                      // prefixIcon: Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: SizedBox(
                      //       height: 30,
                      //       width: 30,
                      //       child: _name.text == "+91"
                      //           ? Image.asset('assets/Biratnagar.png')
                      //           : Image.asset('assets/carpenter.png')),
                      // ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Middle Name ',
                      focusColor: Colors.red,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Last Name *',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Profession *',
                      border: OutlineInputBorder(),
                    ),
                    value: _selectedProfession,
                    items: [
                      'Electrician',
                      'Carpenter',
                      'Priest',
                      'Painter',
                      'Contractor',
                      'Tubewell',
                      'Outlet',
                      'Aluminium',
                      'Interior Decorator',
                    ]
                        .map((profession) => DropdownMenuItem<String>(
                              value: profession,
                              child: Text(profession),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedProfession = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    focusNode: FocusNode(
                      canRequestFocus: true,
                      //skipTraversal: true,
                      // descendantsAreFocusable: true,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Phone Number *',
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: _name.text == '+91'
                              ? Image.asset('assets/Nepal_flag.png')
                              : Image.asset('assets/Nepal_flag.png'),
                        ),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'City *',
                      border: OutlineInputBorder(),
                    ),
                    value: _selectedCity,
                    items: [
                      'Biratnagar',
                      'Ithari',
                      'Kathmandu',
                    ]
                        .map((city) => DropdownMenuItem<String>(
                              value: city,
                              child: Text(city),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: valueFirst,
                        onChanged: (bool? value) {
                          setState(() {
                            valueFirst = value!;
                          });
                        },
                      ),
                      const Text('I agree to the Terms and Conditions'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 19, 18, 18)),
                  ),
                  onPressed: () {
                    if (valueFirst) {
                      print("Form Submitted");
                    } else {
                      print("Please agree to the terms and conditions");
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
