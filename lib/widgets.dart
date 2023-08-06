import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class FooterWidget extends StatelessWidget {
  final Color textColor;

  const FooterWidget({
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Footer(
      backgroundColor: Colors.transparent,
      alignment: Alignment.bottomCenter,
      child: RichText(
        text: TextSpan(
          text: 'Oneloc’un mobil uygulamasına giriş yapan kullanıcılar ',
          style: TextStyle(fontSize: 12,color: textColor),
          children: <TextSpan>[
            TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold),
                text: 'Gizlilik Politikası’',
                recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context,'/gizlilik')),
            TextSpan(
              text: 'na ve ',),
            TextSpan(
                style: TextStyle(fontWeight: FontWeight.bold),
                text: 'Şartlar ve Koşullar’',
                recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context,'/sartlar')),
            TextSpan(
              text: 'a tabidir.',),
          ],
        ),
      ),
    );
  }
}