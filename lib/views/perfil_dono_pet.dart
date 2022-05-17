import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tier/colors.dart';
import 'package:tier/views/pet_page.dart';

import '../data/animais_fav.dart';
import '../widgets/animais_fav_list.dart';

class PerfilDonoPet extends StatefulWidget {
  const PerfilDonoPet({Key? key}) : super(key: key);

  @override
  State<PerfilDonoPet> createState() => _PerfilDonoPetState();
}

class _PerfilDonoPetState extends State<PerfilDonoPet> {
  List<Map> favoritas = [];

  initData(){
    favoritas = AnimaisFav().animaisFavoritos;
  }
  @override
  void initState() {
    initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xEFECECD5),
      body: Stack(
        children: [
          //foto e nome
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.width/1.5,
                color: AppColor.cinzaClaro.withOpacity(0.4),
                child: Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.width/8),
                  child: Column(
                    children: [
                      Container(

                        width: MediaQuery.of(context).size.width/3.5,
                        height: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://th.bing.com/th/id/OIP.ri6Xe7lAc79oh4m-5mNs-gHaEK?pid=ImgDet&rs=1')
                          )
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/80),
                      Text("Victor Rangel",style: GoogleFonts.poppins(fontSize:MediaQuery.of(context).size.width/22, fontWeight: FontWeight.w500  ),)
                    ],
                  ),
                ),
          )
          ),
          //button to back
          Positioned(
              top: 45,
              left: 20,
              right: 330,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) => PetPage()));
                },

                child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 20,),
              )
          ),
          //informacoes
          Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height/3.8,
              child:
             Container(
               padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/15,right: MediaQuery.of(context).size.width/15, top: MediaQuery.of(context).size.height/25,bottom: MediaQuery.of(context).size.height/15),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: AppColor.background,
               ),
               child: Column(
                 children: [
                   Text("Sou uma pessoa que legal que luta pela causa animal e blablabla",style: GoogleFonts.poppins(),),
                   SizedBox( height: MediaQuery.of(context).size.height/30),
                   Container(
                     padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/15,right: MediaQuery.of(context).size.width/15, top: MediaQuery.of(context).size.height/45,bottom: MediaQuery.of(context).size.height/45),
                     decoration: BoxDecoration(
                       color: AppColor.amareloPrincipal,
                       borderRadius: BorderRadius.all(Radius.circular(30)),

                     ),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text("Mandar mensagem",style: GoogleFonts.poppins(color: AppColor.textoBranco),),
                         Icon(Icons.chat_bubble_rounded,size: 18,color: AppColor.textoBranco,)
                       ],
                     ),
                   ),
                   SizedBox( height: MediaQuery.of(context).size.height/30),
                   Text("Animais para adoção",textAlign: TextAlign.left,style: GoogleFonts.poppins(fontSize: 18,color: AppColor.textosPretos3)),





                 ],
               ),

          ))
        ],
      ),
    );
  }
}