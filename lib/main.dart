import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.transparent,


          title: Text('Flutter'),


          leadingWidth: 56,
          leading: InkWell(
            onTap: (){
              print('Menu Acton');
            },
            child: Icon(
              Icons.menu,
            color: Colors.pink,
            size: 24,),
          ),
            // actions: [GestureDetector(
            //   onTap: ()=>print('search'),
            //     child: Icon(Icons.search)),
            //
            // ],
          actions: [IconButton(onPressed: (){
            print('search');
          },
              // padding: EdgeInsets.zero,
              // visualDensity: VisualDensity(
              //   horizontal: VisualDensity.minimumDensity,
              //   vertical: VisualDensity.minimumDensity
              // ),
              icon: Icon(Icons.search)),

           PopupMenuButton<String>(
             // enabled: false,
               onSelected: (String value){
             print('$value');
           },
               padding: EdgeInsets.only(right: 30),
               tooltip: 'Menu',
               icon: Icon(Icons.more_horiz,
               color: Colors.yellowAccent,),
               color: Colors.grey,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
                 side: BorderSide(
                   color: Colors.orange,
                   width: 1
                 )
               ),

               elevation: 0,
               offset: Offset(-30,40),
               itemBuilder: (context){return[

             PopupMenuItem(
               // padding: EdgeInsets.zero,
               textStyle: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.black,


               ),
               // enabled: false,
               child: Text('First',
               ),


             value: 'item-1',
             ),
                 PopupMenuDivider(),

                 PopupMenuItem(child: Text('Second'),
                   value: 'item-2',
                 )

           ];})
          ],
           // centerTitle: true,
          titleSpacing: 16,
          elevation: 0,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   side: BorderSide(
          //     color: Colors.orange,
          //     width: 4
          //   )
          // ),
        ),
        body: Stack(
          children: [
            Image.asset('images/aaa.png',
              height: double.infinity,
              fit: BoxFit.cover,)
            // Image(
            //   height: double.infinity,
            //   fit: BoxFit.cover,
            //   image: NetworkImage('https://img.freepik.com/free-vector/hand-painted-watercolor-abstract-watercolor-background_23-2149005675.jpg?w=2000'),),
            ,  Center(
                child: Text(
                    'Flutter corse',
                    style:TextStyle(
                        fontSize: 28,
                      fontFamily:'SourceSansPro',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,

                        color: Colors.black,
                        backgroundColor: Colors.grey,
                        letterSpacing:3,
                        wordSpacing: 10,
                        decoration: TextDecoration.combine([TextDecoration.underline,
                          TextDecoration.overline])
                    )),
              ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Text(' Flutter Flutter-vp18',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily:'SourceSansPro',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic

                ),

              ),
            )





            // Image.network('https://img.freepik.com/free-vector/hand-painted-watercolor-abstract-watercolor-background_23-2149005675.jpg?w=2000',
            // height: double.infinity,
            // fit: BoxFit.cover,),


          ],
        ),
      ),
    );
  }
}


