import 'package:flutter/material.dart';
import 'package:nft_marketplace/src/widgets/sign_up_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          // flex: 1
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
              //TODO: change!!! height: 232.0
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/sing_up_background_img.png'),
              ),
            ),
          ),
        ),
        Expanded(
          // flex: 3
          flex: 5,
          child: Column(children: const [
            Text('Create Account'),
            Text(
                'Welcome! enter your details and start creating, collecting and selling NFTs.'),
            SingUpForm(),
          ]),
        ),
      ],
    );
  }
}
