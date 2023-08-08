import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false ,
        title: Image.asset('assets/images/oneloc_icon_appBar.png', fit: BoxFit.contain, height: 40,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(74.0),
              child: Image.asset("assets/images/onelocimg_vector.png"),
            ),
            Text("Bilgilerin inceleniyor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Oneloc ekibi vermiş olduğun bilgileri inceliyor. Onaylandıktan sonra bir bildirim alacaksın ve hesabını kullanmaya başlayabileceksin.", style: TextStyle(fontSize: 15),),
            ),
            SizedBox(height: 50,),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFD0000),
              ),
              child: Center(
                child: TextButton(onPressed: () {SystemNavigator.pop();  },child: Text("Çıkış yap",style: TextStyle(fontSize:18,decoration: TextDecoration.none ),),),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: TextButton(onPressed: () {
              Navigator.pushNamed(context,'/');
            },
              child: Text("Vazgeçtim, bilgilerimi tamamen sil", style: TextStyle(fontSize:18),),),),
          ],
        ),
      ),
    );
  }
}
