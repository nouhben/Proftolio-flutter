import 'package:flutter/material.dart';
import 'package:portfolioweb/components/default_button.dart';
import 'package:portfolioweb/constants.dart';
import 'package:portfolioweb/sections/contact/components/social_card.dart';
import 'package:portfolioweb/services/networking.dart';
import 'package:portfolioweb/size_config.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110.0),
      padding: EdgeInsets.all(kDefaultPadding * 2.5),
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          Wrap(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: kDefaultPadding * 2,
            runSpacing: kDefaultPadding * 2,
            children: [
              SocialCard(
                text: 'nouhben',
                imageURL: 'https://img.icons8.com/color/48/000000/github-2.png',
                color: Color(0xffE8F0F9),
                onPress: () {},
              ),
              SocialCard(
                text: 'nouhben',
                imageURL:
                    'https://img.icons8.com/cotton/64/000000/facebook-messenger--v4.png',
                color: Color(0xffD9FFFC),
                onPress: () async {
                  await Networking.launchURL(
                    url: 'https://web.facebook.com/messages/t/thescen',
                  );
                },
              ),
              SocialCard(
                text: 'nouhben',
                imageURL:
                    'https://img.icons8.com/cotton/64/000000/whatsapp--v4.png',
                color: Color(0xffE4FFC7),
                onPress: () {},
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _fieldWidth =
        SizeConfig.screenWidth > 800 ? 470 : SizeConfig.screenWidth * 0.8;
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: _fieldWidth,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Enter your name',
                labelText: 'Fullname',
              ),
            ),
          ),
          SizedBox(
            width: _fieldWidth,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email',
              ),
            ),
          ),
          SizedBox(
            width: _fieldWidth,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Select project type',
                labelText: 'Project Type',
              ),
            ),
          ),
          SizedBox(
            width: 470.0,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Select project budget',
                labelText: 'Project Budget',
              ),
            ),
          ),
          SizedBox(
            //height: 300.0,
            child: TextFormField(
              onChanged: (value) {
                print(value);
              },
              decoration: InputDecoration(
                hintText: 'Write a description ... ',
                labelText: 'Description',
              ),
            ),
          ),
          //SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageURL: 'images/contact_icon.png',
                text: 'Contact me',
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
