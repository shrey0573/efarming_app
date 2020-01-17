import 'package:efarming_app/pages/product_details.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:url_launcher/url_launcher.dart';

//my own packages
import 'package:efarming_app/components/horizontal_list_view.dart';
import 'package:efarming_app/components/products.dart';

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
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 20.0,
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
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories', style: TextStyle(fontSize: 20.0),)),
          Divider(),

          //Horizontal List View starts from here
          HorizontalListView(),
          Divider(),
          new Padding(padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 20.0),
              child: new Text('Recent Products', style: TextStyle(fontSize: 20.0),)),

          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}


