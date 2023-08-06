import 'package:flutter/material.dart';
import '../widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          vertical: 60
        ),
        child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Hemen yeni bir hesap oluştur ve en iyi ',
                  style: TextStyle(fontSize: 26,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'deneyimi yaşa!', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),

               Container(
                 decoration: BoxDecoration(
                   color: Colors.grey.shade400,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: const TextField(
                   // controller: _urlLinkController,
                   style: TextStyle(color: Colors.black),
                   decoration: InputDecoration(
                       labelText: 'Kullanıcı adı',
                       border: InputBorder.none),
                 ),
               ),
               const SizedBox(height: 25),
               Container(
                 decoration: BoxDecoration(
                   color: Colors.grey.shade400,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: const TextField(
                   // controller: _urlLinkController,
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
                 child: const TextField(
                  // controller: _urlLinkController,
                   style: TextStyle(color: Colors.black),
                   decoration: InputDecoration(
                       labelText: 'Telefon numarası',
                       border: InputBorder.none),
                 ),
               ),
               const SizedBox(height: 25),
               Container(
                 decoration: BoxDecoration(
                   color: Colors.grey.shade400,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: const TextField(
                   // controller: _urlLinkController,
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
                   child: TextButton(onPressed: () {Navigator.pushNamed(context,'/login');  },child: Text("Hesabı oluştur",style: TextStyle(color: Colors.white,fontSize:21,decoration: TextDecoration.none ),),),
                 ),
               ),
               SizedBox(height: 15,),
               Center(child: TextButton(onPressed: () {
                 Navigator.pushNamed(context,'/login');
               },
                 child: Text("Giriş yap", style: TextStyle(color: Colors.black,fontSize: 21),),),),
              FooterWidget(textColor: Colors.black)
            ],
        ),
      ),
    );
  }
}
