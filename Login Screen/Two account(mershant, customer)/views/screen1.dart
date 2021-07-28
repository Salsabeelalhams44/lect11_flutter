import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login%20Screen/Two%20account(mershant,%20customer)/components/customer.dart';
import 'package:flutter_application_1/Login%20Screen/Two%20account(mershant,%20customer)/components/mershant.dart';

enum UserType { Customer, Mershant }

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  UserType groupvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Shop App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: RadioListTile(
                        activeColor: Colors.white,
                        toggleable: true,
                        title: Text(
                          'Customer',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: UserType.Customer,
                        groupValue: groupvalue,
                        onChanged: (v) {
                          groupvalue = v;
                          setState(() {});
                        }),
                  ),
                ),
                Expanded(
                  child: Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: RadioListTile(
                        activeColor: Colors.white,
                        toggleable: true,
                        title: Text(
                          'Mershant',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: UserType.Mershant,
                        groupValue: groupvalue,
                        onChanged: (v) {
                          groupvalue = v;
                          setState(() {});
                        }),
                  ),
                ),
              ],
            ),
            //     SizedBox(
            // height: 20,
            //),
            groupvalue == UserType.Customer ? CustomerPage() : MershantPage(),
          ],
        ),
      ),
    );
  }
}
