import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
//import package file manually

class WriteSQLdata extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return WriteSQLdataState();
  }
}

class WriteSQLdataState extends State<WriteSQLdata>{

  TextEditingController namactl = TextEditingController();
  TextEditingController harga = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController link = TextEditingController();
  TextEditingController kota = TextEditingController();
  TextEditingController provinsi = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController kategori = TextEditingController();
  TextEditingController nomor_wa = TextEditingController();
  TextEditingController rating = TextEditingController();
  TextEditingController mapUrl = TextEditingController();
  TextEditingController photos = TextEditingController();
  TextEditingController numberOfKitchens = TextEditingController();
  TextEditingController numberOfBedrooms = TextEditingController();
  TextEditingController numberOfCupboards = TextEditingController();
  //text controller for TextField

  String msg= "oke";

  String phpurl = "https://nora-id.nismumtaz.com/api/kosts";
  // do not use http://localhost/ for your local
  // machine, Android emulation do not recognize localhost
  // insted use your local ip address or your live URL
  // hit "ipconfig" on Windows or  "ip a" on Linux to get IP Address

  @override


  Future<void> sendData() async {

     var res = await http.post(Uri.parse(phpurl), body: { 
          "nama": namactl.text,
          "harga": harga.text,
          "type": type.text,
          "link": link.text,
          "kota": kota.text,
          "provinsi": provinsi.text,
          "alamat": alamat.text,
          "kategori": kategori.text,
          "nomor_wa": nomor_wa.text,
          "rating": rating.text,
          "mapUrl": mapUrl.text,
          "photos": photos.text,
          "numberOfKitchens": numberOfKitchens.text,
          "numberOfBedrooms": numberOfBedrooms.text,
          "numberOfCupboards": numberOfCupboards.text

      }); //sending post request with header data

     if (res.statusCode == 200) {
       print(res.body); //print raw response on console
       var data = json.decode(res.body); //decoding json to array
       if(data['value'] == 0){
          msg = "Gagal";
       }else{
         msg = "Berhasil menambahkan data";
         namactl.text = "";
         harga.text = "";
         type.text = "";
         link.text = "";
         kota.text = "";
         provinsi.text = "";
         alamat.text = "";
         kategori.text = "";
         nomor_wa.text = "";
         rating.text = "";
         //after write success, make fields empty

          
       }
       
    }else{
       msg = "Gagal error";
        
    }
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
           title:Text("Add Kost Data"),
           backgroundColor:Colors.red
        ), //appbar

        body: SingleChildScrollView( //enable scrolling, when keyboard appears,
                                   // hight becomes small, so prevent overflow
           child:Container( 
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                
                Container( 
                  child:Text(msg), 
                  //if there is error then sho msg, other wise show text message
                ),

                Container( 
                  child: TextField( 
                     controller: namactl,
                     
                     decoration: InputDecoration(
                        labelText:"Nama Kost:",
                        hintText:"Enter Nama Kost",
                     ),
                  )
                ), //text input for name

                Container( 
                  child: TextField( 
                     controller: harga,
                     decoration: InputDecoration(
                        labelText:"Harga Kost:",
                        hintText:"Enter Harga Kost",
                     ),
                  )
                ), //text input for estimasi

                Container( 
                  child: TextField(
                     controller: type,
                     decoration: InputDecoration(
                        labelText:"Type:",
                        hintText:"Enter Type",
                     ),
                  )
                ), //text input for class

                Container( 
                  child: TextField( 
                     controller: link,
                     decoration: InputDecoration(
                        labelText:"Link Image:",
                        hintText:"Enter Link Image of Kosts",
                     ),
                  )
                ),
              
                 Container( 
                  child: TextField( 
                     controller: kota,
                     decoration: InputDecoration(
                        labelText:"Image:",
                        hintText:"Input image for module",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: provinsi,
                     decoration: InputDecoration(
                        labelText:"Provinsi:",
                        hintText:"Enter Provinsi",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: alamat,
                     decoration: InputDecoration(
                        labelText:"Alamat Lengkap:",
                        hintText:"Enter Alamat Lengkap",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: kategori,
                     decoration: InputDecoration(
                        labelText:"Kategori",
                        hintText:"Enter Kategori",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: nomor_wa,
                     decoration: InputDecoration(
                        labelText:"Nomor WA:",
                        hintText:"Enter Nomor WA",
                     ),
                  )
                ), 
                Container( 
                  child: TextField( 
                     controller: rating,
                     decoration: InputDecoration(
                        labelText:"Rating:",
                        hintText:"Enter Rating",
                     ),
                  )
                ), 
                Container( 
                  child: TextField( 
                     controller: rating,
                     decoration: InputDecoration(
                        labelText:"Rating:",
                        hintText:"Enter Rating",
                     ),
                  )
                ), 
                Container( 
                  child: TextField( 
                     controller: mapUrl,
                     decoration: InputDecoration(
                        labelText:"Map Url:",
                        hintText:"Enter Map Url",
                     ),
                  )
                ), 
                Container( 
                  child: TextField( 
                     controller: photos,
                     decoration: InputDecoration(
                        labelText:"Link photos:",
                        hintText:"Enter Link photos",
                     ),
                  )
                ),
                Container( 
                  child: TextField( 
                     controller: numberOfKitchens,
                     decoration: InputDecoration(
                        labelText:"Number Of Kitchens:",
                        hintText:"Enter Number Of Kitchens",
                     ),
                  )
                ),
                Container( 
                  child: TextField( 
                     controller: numberOfBedrooms,
                     decoration: InputDecoration(
                        labelText:"Number Of bedrooms:",
                        hintText:"Enter Number Of bedrooms",
                     ),
                  )
                ),
                Container( 
                  child: TextField( 
                     controller: numberOfCupboards,
                     decoration: InputDecoration(
                        labelText:"Number of cupboards:",
                        hintText:"Enter Number of cupboards",
                     ),
                  )
                ),    

                Container( 
                   margin: EdgeInsets.only(top:20),
                   child:SizedBox( 
                     width: double.infinity,
                     child:RaisedButton(
                        onPressed:(){ //if button is pressed, setstate sending = true, so that we can show "sending..."
                          
                          sendData();
                        },
                        child: Text(
                          msg
                          //if sending == true then show "Sending" else show "SEND DATA";
                        ), 
                        color: Colors.redAccent,
                        colorBrightness: Brightness.dark,
                        //background of button is darker color, so set brightness to dark
                     )
                   )
                )
              ],)
           )
        ),
     );
  }
}