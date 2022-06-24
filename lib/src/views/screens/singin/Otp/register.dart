import 'package:flutter/material.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../../widgets/widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 24,
        ),
        const Text(
          'Registration',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Add your phone number. we'll send you a verification code so we know you're real",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 28,
        ),
        Container(
          padding: const EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
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
                    borderSide: const BorderSide(color: kGreyColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefix: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('(+243)', style: themeData.textTheme.bodyText2),
                  ),
                  suffixIcon: const Icon(
                    Icons.check_circle,
                    color: kGreyColor,
                    size: 17,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              RagoButtom(
                descriprion: "Soumetre",
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      foregroundColor: MaterialStateProperty.all(kWhiteColor),
                      overlayColor: MaterialStateProperty.all(
                        kGreyColor.withOpacity(.5),
                      ),
                    ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              size: 22,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
