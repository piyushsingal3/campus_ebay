import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductDetails extends StatelessWidget {
  final Map<String, String> item;

  ProductDetails({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item['title']!,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor:  Color.fromARGB(255, 48, 95, 213),
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.network(item['image']!),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Price: ${item['price']}',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Divider(color: Colors.black),
            SizedBox(height: 20),
            Text(
              'Description',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Bajaj PMH 36 torque is a durable, compact and portable room cooler that can be placed in offices as well in bedrooms for effective cooling, it is constructed from corrosion-free, engineered thermoplastic material that makes it a long lasting performer,',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Seller Information',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Seller: Piyush Singal\nContact: psingal23@iitk.ac.in',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Reviews',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text('Arnav jagtap'),
                    subtitle: Text('Do not purchase.just a waste of money .mine stopped working in 1 month'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Pradyumna deshmukh'),
                    subtitle: Text('Value for money,just go for it'),
                  ),
                ),
                 Card(
                  child: ListTile(
                    title: Text('Abhishek l'),
                    subtitle: Text('Purchase some different one at same price not value for money'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => {},
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Chat with Seller',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.black),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 48, 95, 213),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
