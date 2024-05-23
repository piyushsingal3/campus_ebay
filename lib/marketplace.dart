import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './productdetails.dart';

class Marketplace extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': "https://www.bing.com/th?id=OPAC.gLC509iC%2b%2fLOAA474C474&o=5&pid=21.1&w=148&h=260&rs=1&qlt=100&dpr=1.3&bw=6&bc=FFFFFF",
      'title': 'Bajaj 36 L Air Cooler PX 97 Torque White',
      'price': '6500/-Rs',
    },
    {
      'image': 'https://www.bing.com/th?id=OPAC.6G2eTwzlad3Kbw474C474&o=5&pid=21.1&w=160&h=272&rs=1&qlt=100&dpr=1.3&pcl=f5f5f5',
      'title': 'Symphony Storm 70 XL 70 Litres Desert Air Cooler  (Cool Flow Dispenser, White)',
      'price': '8,000/-Rs',
    },
    {
      'image': 'https://www.bing.com/th?id=OPAC.3sahL3TZlgltjw474C474&o=5&pid=21.1&w=148&h=260&rs=1&qlt=100&dpr=1.3&bw=6&bc=FFFFFF',
      'title': 'USHA DYNAMO 70 Litres Desert Air Cooler ',
      'price': '8,499/-Rs',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.o7Tn0ve9C_-oE6xxiM0JZAHaHa?w=300&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title': 'Luma Comfort 1650 CFM 3-Speed Cooler',
      'price': '5,000/-Rs',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.EnZo6NDmMjVdLT7NGXU5RgAAAA?pid=ImgDet&w=300&h=300&c=7&dpr=1.3',
      'title': 'Fan',
      'price': '10',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.QGa_f2jCV4ybNv5cUipUGgHaHa?w=300&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title': 'Mattress',
      'price': '2,000/-Rs',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.bBAo4L2TSMB0ceHo8lI6gwHaE7?w=400&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title': 'Zin Titanium Cycle',
      'price': '6,000/-Rs',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.1x3nzlvGtX9X-EeWq67JvgHaEW?w=515&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title': 'Herculus Cycle',
      'price': '5000/-Rs',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.PY-l7wGK9ANAIV7rQH1zugHaE8?w=421&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title': 'Hero cycle',
      'price': '4,000/-Rs',
    },
    {
      'image': 'https://th.bing.com/th/id/OIP.xna3JyKI7-L0WPNM8A7zqAHaHa?w=300&h=300&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'title': 'Toshiba Cooler',
      'price': '5,000/-Rs',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Marketplace',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Campus eBay',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            
            
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(item: item),
                ),
              );
            },
            child: Card(
              child: Center(
                child: Column(
                  children: [
                    Image.network(item['image']!),
                    Text(
                      item['title']!,
                      style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      'Price: ${item['price']}',
                      style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
        bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.category),  
           label : 'Orders',  
            
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
              label:"Search",
           
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.local_offer),  
            label: 'Offers',  
          
          ),  
        ],  
         
      ),  
    );
  }
}
