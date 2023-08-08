import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          style: TextStyle(fontSize: 12,),
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


class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.labelText,
    required this.controller,

  });

  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
       // color: Color(0xffCECECE),
        borderRadius: BorderRadius.circular(10),
      ),
      child:TextField(
        controller: controller,
        style: TextStyle(color: Color(0xff525252)),
        decoration: InputDecoration(
            labelText: labelText,
            border: InputBorder.none),
      ),
    );
  }
}

class TextButtonContainerWidget extends StatelessWidget {
  const TextButtonContainerWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff0076FF)
      ),
      child: Center(
        child: TextButton(onPressed:onPressed ,child: Text(text,style: TextStyle(color: Colors.white,fontSize:21,decoration: TextDecoration.none ),),),
      ),
    );
  }
}


