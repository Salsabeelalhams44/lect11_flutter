import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class CustomerPage extends StatefulWidget {
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  String emailVal, passVal, phoneVal, nameVal;
  bool isScure = true;
  GlobalKey<FormState> formkeyCustomer = GlobalKey();
  saveForm() {
    if (formkeyCustomer.currentState.validate()) {
      formkeyCustomer.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formkeyCustomer,
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
          ],
        ),
      ),
    );
  }
}
