import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class MershantPage extends StatefulWidget {
  @override
  _MershantPageState createState() => _MershantPageState();
}

class _MershantPageState extends State<MershantPage> {
  String emailVal, passVal, phoneVal, nameVal, shopNameVal, bio;
  String dropdown = 'Fashion';
  bool isScure = true;
  List Catogory = <String>['Fashion', 'Clothes', 'Devises', 'Games'];
  GlobalKey<FormState> formkeyMershant = GlobalKey();
  saveForm() {
    if (formkeyMershant.currentState.validate()) {
      formkeyMershant.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkeyMershant,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (String valid) {
                  if (valid.length == 0) {
                    return 'Name required';
                  }
                  return null;
                },
                onSaved: (String lb) {
                  nameVal = lb;
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.perm_identity),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (String valid) {
                  if (valid.length == 0) {
                    return 'Email required';
                  } else if (!isEmail(valid)) {
                    return 'Required include @';
                  }
                  return null;
                },
                onSaved: (String lb) {
                  emailVal = lb;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                validator: (String valid) {
                  if (valid.length == 0) {
                    return 'Phone required';
                  } else if (!valid.startsWith('059')) {
                    return 'Number must start with 059';
                  }
                  return null;
                },
                onSaved: (String lb) {
                  phoneVal = lb;
                },
                decoration: InputDecoration(
                  labelText: 'phone',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                obscureText: isScure,
                keyboardType: TextInputType.text,
                validator: (String valid) {
                  if (valid.length == 0) {
                    return 'Password required';
                  }
                  return null;
                },
                onSaved: (String lb) {
                  passVal = lb;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      isScure = !isScure;
                      setState(() {});
                    },
                    icon:
                        Icon(isScure ? Icons.visibility : Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (String valid) {
                  if (valid.length == 0) {
                    return 'Shope Name required';
                  }
                  return null;
                },
                onSaved: (String lb) {
                  shopNameVal = lb;
                },
                decoration: InputDecoration(
                  labelText: 'Shop Name',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (String valid) {
                  if (valid.length == 0) {
                    return 'Bio required';
                  }
                  return null;
                },
                onSaved: (String lb) {
                  bio = lb;
                },
                decoration: InputDecoration(
                  labelText: 'Bio',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: DropdownButton<String>(
                  isExpanded: true,
                  underline: Container(),
                  value: this.dropdown,
                  onChanged: (v) {
                    this.dropdown = v;
                    setState(() {});
                  },
                  items: Catogory.map((val) {
                    return DropdownMenuItem<String>(
                      child: Text(val),
                      value: val,
                    );
                  }).toList()),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  saveForm();
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
