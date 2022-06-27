import 'package:flutter/material.dart';
import 'package:rago/src/views/widgets/widget.dart';
import 'package:ragotheme/ragotheme.dart';

import '../../../../constante/route.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _keyForm = GlobalKey();
  final GlobalKey<State> _keyLoader =
      GlobalKey<State>(debugLabel: "loading  user");

  final TextEditingController _telephone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final l10n = AppLocalizations.of(context);
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    //TODO : Add the Form Widget to verify all controller and validator form
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFieldCustomer(
          hint: "Nom & Prénom", //l10n!.nom,
          // prefixIcon: const Padding(
          //   padding: EdgeInsets.only(
          //       top: 20.0, left: 20.0, right: 15.0, bottom: 0),
          //   child: SizedBox(
          //     height: 10,
          //     width: 10,
          //     child:  Icons(icon: Icons.lock),
          //   ),
          // ),
        ),
        TextFieldCustomer(
          hint: "**************",
          isPassword: true,
          // prefixIcon: const Padding(
          //   padding: EdgeInsets.only(
          //       top: 20.0, left: 20.0, right: 15.0, bottom: 0),
          //   child: SizedBox(
          //     height: 10,
          //     width: 10,
          //     child: Text('data'), //Image.asset(Assets.key),
          //   ),
          // ),
        ),
        const SizedBox(height: 10),
        RagoButtom(
          onPressed: () {
            Navigator.pushNamed(context, Routes.page);
          },
          descriprion: "Se Connecter", //l10n.seconnecter,
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                foregroundColor: MaterialStateProperty.all(kWhiteColor),
                overlayColor: MaterialStateProperty.all(
                  kGreyColor.withOpacity(.5),
                ),
              ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Mot de passe oublié?",
              // l10n.seconnecter,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: kGreyColor),
            ),
            Text(
              "Changer de compte",
              //l10n.changerdecompte,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: kGreyColor),
            )
          ],
        ),
        const SizedBox(height: 10),
        RagoButtom(
          onPressed: () {
            Navigator.pushNamed(context, Routes.register);
          },
          colortextStyle: kRago,
          descriprion: "S'inscrire",
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                foregroundColor: MaterialStateProperty.all(kRago),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                overlayColor: MaterialStateProperty.all(
                  kRago.withOpacity(.5),
                ),
              ),
        ),
      ],
    );
  }
}
