import 'package:flutter/material.dart';
import 'package:oneloc_case_study/riverpod/riverpod_management.dart';
import '../widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogIn extends ConsumerStatefulWidget {
  const LogIn({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LogInState();
}
//final loginRiverpod = StateProvider((_)=> LoginRiverpod());

class _LogInState extends ConsumerState<LogIn> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios,color: Color(0xff0076FF),), onPressed:() => Navigator.of(context).pop(),) ,
        title: const Text('Yeni hesap oluştur', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),) ,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        //physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 100
        ),
        child: Column(
          children: [
            SizedBox(height: 25,),
            RichText(
              text: const TextSpan(
                text: 'En iyi deneyimlerin merkezi Omeloc\'a',
                style: TextStyle(fontSize: 26,color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: ' hoş geldin!', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child:TextField(
                controller: ref.read(loginRiverpod).email,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: 'E-posta adresi',
                    border: InputBorder.none),
              ),
            ),

            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: ref.read(loginRiverpod).password,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: 'Şifre',
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff0076FF)
              ),
              child: Center(
                child: TextButton(onPressed: () =>ref.read(loginRiverpod).fetch() ,child: Text("Giriş yap",style: TextStyle(color: Colors.white,fontSize:21,decoration: TextDecoration.none ),),),
              ),
            ),
            SizedBox(height: 15,),
            Center(child: TextButton(onPressed: () {
              Navigator.pushNamed(context,'/register');
            },
              child: Text("Yeni hesap oluştur", style: TextStyle(color: Colors.black,fontSize: 16),),),),
            FooterWidget(textColor: Colors.black)
          ],
        ),
      ),
    );
  }
}
