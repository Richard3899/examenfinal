import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrincipalPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          SafeArea(            
            child: 
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Page1(),
                  Pages(),
                  Page2(),
                  Items()
                
                ],
              ),
            
          ),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.film,color: Colors.indigoAccent),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.photoVideo,color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search,color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_weight_sharp,color: Colors.grey),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
        
        
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0,0.5),
          end: FractionalOffset(0,1),
          colors: [
            Color.fromRGBO(240, 240,240, 1),
            Color.fromRGBO(240, 240,240, 1),
          ]
        )
      ),
    );
 

  }
}

class Page1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
               Padding(
                 padding: const EdgeInsets.only(bottom:5,left:20,top:30),
                 child: Text('Premiers',textAlign:TextAlign.center,
                 style: TextStyle(fontSize: 20, color: Colors.black87,
                  fontWeight: FontWeight.bold)),
               )
         
              
      
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
               Padding(
                 padding: const EdgeInsets.only(bottom:15,left:20,top:35),
                 child: Text('In this week',textAlign:TextAlign.center,
                 style: TextStyle(fontSize: 20, color: Colors.black87,
                  fontWeight: FontWeight.bold)),
               ),
         
          
        ],
      ),
    );
  }
}


class Pages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      height: _screen.width *0.55,
      width: double.infinity,
      child: 
      PageView(
        controller: PageController(
          viewportFraction: 0.65
        ),
      
        children: [
          PageView1(),
          PageView2()

      ],),
    );
  }
}
class PageView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right:_screen.width *0.05,top:_screen.width *0.03),
      height: _screen.width *0.3,
      width: _screen.width *0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(240, 240,240, 1),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

                Padding(
                  padding: EdgeInsets.symmetric(vertical:5 ),
                  child: Stack(
                    children: [ Container(
                      height: _screen.width *0.34,
                      width: _screen.width *0.65,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage('assets/bighero.jpg')),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),

                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child:
                           Row(              
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 7),
                              child: Icon(Icons.star, color: Colors.yellow,size: 15,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 1),
                              child: Text('4.5',
                              style: TextStyle(fontSize: 14, color: Colors.white,
                                fontWeight: FontWeight.bold)),
                            )

                          ],
                        )

                        ),
   
                      ),

                      ),
                      
                      ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:7),
                  child: Text('Big Hero 6',style: TextStyle( color: Colors.black54, fontSize: 17,
                      fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:1 ),
                  child: Text('2014',style: TextStyle( color: Colors.grey,fontSize: 14,
                      fontWeight: FontWeight.bold)),
                ),
              
             ],
             ),
    );
  }
}


class PageView2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right:_screen.width *0.01,top:_screen.width *0.03),
      height: _screen.width *0.3,
      width: _screen.width *0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(240, 240,240, 1),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

                Padding(
                  padding: EdgeInsets.symmetric(vertical:5 ),
                  child: Stack(
                    children: [ Container(
                      height: _screen.width *0.34,
                      width: _screen.width *0.65,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage('assets/frozen2.jpg')),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),

                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child:
                           Row(              
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 7),
                              child: Icon(Icons.star, color: Colors.yellow,size: 15,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 1),
                              child: Text('4.5',
                              style: TextStyle(fontSize: 14, color: Colors.white,
                                fontWeight: FontWeight.bold)),
                            )

                          ],
                        )

                        ),
   
                      ),

                      ),
                      
                      ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:7),
                  child: Text('Frozen 2',style: TextStyle( color: Colors.black54, fontSize: 17,
                      fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:1 ),
                  child: Text('2019',style: TextStyle( color: Colors.grey,fontSize: 14,
                      fontWeight: FontWeight.bold)),
                ),
              
             ],
             ),
    );
  }
}


class Items extends StatelessWidget {
  const Items({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Expanded(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Column(children: [
              Divider(),
              Lista('assets/dragon.jpg','How to Train Your Dragon',
              'Jacynthe Lubowitz • 2019','110 min'),
              Divider(),
              Lista('assets/sonic.jpg','Sonic the Hedgehog',
              'Irene Amato • 2020','110 min'),
              Divider(),
              Lista('assets/abominable.jpg','Abominable',
              'Tito Predovic • 2019','110 min'),
              Divider(),
              Lista('assets/birdsofprey.png','Birds of Prey',
              'Tito Predovic • 2019','110 min'),
              Divider(),
              Lista('assets/rapandfur.jpg','Fast & Furious',
              'Justin Lin • 2021','110 min'),
              Divider(),
              Lista('assets/avatar.jpg','Avatar',
              'James Cameron • 2009','110 min'),
              
            ],),
          ),
        )
      ),
    );
  }
}

class Lista extends StatelessWidget {
 
 Lista(
   this._img,
   this._nombre,
   this._productor,
   this._tiempo,

 );
    final String  _img;
    final String _nombre;
    final String _productor;
    final String _tiempo;


  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0) ,
    
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             
            
            Container(
              child: Row(

                children: [

                  Padding(
                  padding: EdgeInsets.symmetric(vertical:5 ),
                  child: Stack(
                    children: [ Container(
                      height: _screen.width *0.18,
                      width: _screen.width *0.18,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(_img)),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),

                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child:
                           Row(              
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 7),
                              child: Icon(Icons.star, color: Colors.yellow,size: 15,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 1),
                              child: Text('4.5',
                              style: TextStyle(fontSize: 14, color: Colors.white,
                                fontWeight: FontWeight.bold)),
                            )

                          ],
                        )

                        ),
   
                      ),

                      ),
                      
                      ],
                  ),
                ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text(_nombre,style: TextStyle(fontSize: 19
                        ,color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(_productor,style: TextStyle(fontSize: 17
                          ,color: Colors.grey)),
                        ),
                        Text(_tiempo,style: TextStyle(fontSize: 15
                        ,color: Colors.grey)),
                                        
                      ],
                    ),
                  ),

                ],
              ),
            ),
            
          ],
          
        ),
      ),
    );
  }

}