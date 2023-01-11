import 'package:flutter/material.dart';
import 'package:nft_marketplace/src/widgets/sign_up_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 40.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.displaySmall!,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0, top: 20.0),
                  child: Text(
                      'Welcome! enter your details and start creating, collecting and selling NFTs.'),
                ),
                const Expanded(child: SingUpForm()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
