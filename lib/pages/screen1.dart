import 'package:flutter/material.dart';
import '../widgets.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(image:DecorationImage(image:AssetImage("assets/images/background.png"), fit: BoxFit.cover),),
      child: Padding(
        padding:const EdgeInsets.only(top: 160,left: 20,right: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/onelocbusiness_logo.png"),
            const SizedBox(height: 100,),
            const Text("Müşterilerinize mekanınızla daha kolay erişin.",style:TextStyle(fontSize: 35, color: Colors.white,decoration: TextDecoration.none,),),
            const SizedBox(height: 120,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: Center(
                child: TextButton(onPressed: () {Navigator.pushNamed(context,'/register');  },child: Text("Yeni hesap oluştur",style: TextStyle(color: Color(0xff0076FF),fontSize:21,decoration: TextDecoration.none ),),),
              ),
                ),
            SizedBox(height: 15,),
            Center(child: TextButton(onPressed: () {
              Navigator.pushNamed(context,'/login');
            },
            child: Text("Giriş yap", style: TextStyle(color: Colors.white,fontSize: 21),),),),
            SizedBox(height: 65,),
            FooterWidget(textColor: Colors.white,)
          ],
        ),
        ),
    );
  }
}

