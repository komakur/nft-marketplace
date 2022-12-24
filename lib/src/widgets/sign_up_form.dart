import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/custom_text_form_field.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({super.key});

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  // TODO: create global key
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: const [
        CustomTextFormField(
            prefixIcon: Icon(NFTMarketplaceIcons.kUser, size: 20.0),
            hintText: 'Username'),
        CustomTextFormField(
            prefixIcon: Icon(NFTMarketplaceIcons.kEnvelop, size: 20.0),
            hintText: 'Email Address'),
        CustomTextFormField(
            prefixIcon: Icon(NFTMarketplaceIcons.kLockKey, size: 20.0),
            hintText: 'Password'),
        CustomTextFormField(
            prefixIcon: Icon(NFTMarketplaceIcons.kLockKey, size: 20.0),
            hintText: 'Confirm Password')
      ],
    ));
  }
}
