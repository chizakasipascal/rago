import 'package:flutter/material.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../../widgets/widget.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ajoutez votre numéro de téléphone. nous vous enverrons un code de vérification afin que nous sachions que vous êtes réel",
            style: themeData.textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
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
                  child: RagoButtom(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Otp()),
                      );
                    },
                    descriprion: "Soumetre", //l10n.seconnecter,
                    style:
                        Theme.of(context).elevatedButtonTheme.style!.copyWith(
                              foregroundColor:
                                  MaterialStateProperty.all(kWhiteColor),
                              overlayColor: MaterialStateProperty.all(
                                kGreyColor.withOpacity(.5),
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
