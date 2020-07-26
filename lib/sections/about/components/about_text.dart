import 'package:flutter/material.dart';
import 'package:portfolioweb/constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About\nMy story',
          style: Theme.of(context).textTheme.headline2.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        SizedBox(height: kDefaultPadding * 2),
        Image.asset('images/sign.png'),
      ],
    );
  }
}
