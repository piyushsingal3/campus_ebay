import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Profile')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: [
               Icon(Icons.person,size: 300,),
                SizedBox(height: 10),
                
                  Text('Piyush Singal',
                        style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                        ),),
               
                Text('Contact: psingal23@iitk.ac.in', style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),),
                      Text('Phone No.: 7082298297', style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text('Edit Profile', style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.blueGrey),
                      ),)),
                SizedBox(height: 20),
                Text('Sells Air coolers, Matress and cycles', style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: Colors.black),
                      ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
