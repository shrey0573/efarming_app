import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main(){
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
         home: HomePage(),
      )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/IMG_1266.JPG')
        ],
        autoplay: true,

        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: Text('AgriCart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){})
        ],
        backgroundColor: Color(0xFF388E3C),
      ),
      drawer: new Drawer(
            child: ListView(
              children: <Widget>[
                //header
                new Container(
                    color:Colors.green,
                    child: new UserAccountsDrawerHeader(
                      accountName: Text('Patel Abhishek'),
                      accountEmail: Text('patel@gmail.com'),
                      currentAccountPicture: GestureDetector(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person, color: Colors.green, size: 45,),
                          ),
                      ),
                      decoration: new BoxDecoration(
                        color: Color(0xFF388E3C),
                      ),
                    ),

                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home, color: Color(0xFF388E3C),)
                  )
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                        title: Text('My Account'),
                        leading: Icon(Icons.account_circle, color: Color(0xFF388E3C),)
                    )
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                        title: Text('My Orders'),
                        leading: Icon(Icons.shopping_basket, color: Color(0xFF388E3C),)
                    )
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                        title: Text('Categories'),
                        leading: Icon(Icons.dashboard, color: Color(0xFF388E3C),)
                    )
                ),

                Divider(),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                        title: Text('Settings'),
                        leading: Icon(Icons.settings, color: Color(0xFF388E3C),)
                    )
                ),

                InkWell(
                    onTap: (){},
                    child: ListTile(
                        title: Text('About'),
                        leading: Icon(Icons.help, color: Color(0xFF388E3C),)
                    )
                )
              ],
            )
      ),
      body: ListView(
        children: <Widget>[
          image_carousel
        ],
      ),
    );
  }
}


