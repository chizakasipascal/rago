import 'package:flutter/material.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../screens.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Text(
            'Phone number',
            style: themeData.textTheme.headline6!.copyWith(color: kRago),
          ),
          const SizedBox(height: 10),
          Text(
            "Add your phone number. we'll send you a verification code so we know you're real",
            style: themeData.textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: themeData.textTheme.bodyText2,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kGreyColor),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: kRago),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefix: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child:
                          Text('(+243)', style: themeData.textTheme.bodyText2),
                    ),
                    suffixIcon: const Icon(
                      Icons.check_circle,
                      color: kGreyColor,
                      size: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 120,
                    child: MaterialButton(
                      color: kRago,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Otp()),
                        );
                      },
                      child: Text(
                        'Send',
                        style: themeData.textTheme.bodyText2!
                            .copyWith(color: kWhiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
