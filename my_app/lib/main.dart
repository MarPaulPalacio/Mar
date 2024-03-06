import 'package:flutter/material.dart';

void main() {
  runApp(const RootStatefulWidget());
}

class RootStatefulWidget extends StatefulWidget {
  const RootStatefulWidget({super.key});

  @override
  State<RootStatefulWidget> createState() {
    return _RootStatefulWidget();
  }
}


class _RootStatefulWidget extends State<RootStatefulWidget> {

  int count = 0;
  
  void _incrementCounter() {
    setState(() {
      count++;
    });
  }
  List<String> posts = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",

  ];

  Widget listPosts() {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Image.asset(posts[index]),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("@sirTheBest", style:TextStyle(color: Colors.white)),
          centerTitle: false,
          backgroundColor: Colors.lightBlue,
          shadowColor: Color.alphaBlend(Colors.black, Colors.indigo),
        ),
        body: Container(
          margin: const EdgeInsets.all(30),
          
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Row(

                  children: [
                    
                    ClipRRect(
                  
                      borderRadius: BorderRadius.circular(360),
                      
                      child: Center(
                        heightFactor: CircularProgressIndicator.strokeAlignOutside,
                        widthFactor: CircularProgressIndicator.strokeAlignOutside,
                        
                        child: Image.network("https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg", height: 100, width: 100)),
                      
                    ),

                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                          child: Row (
                              children: [
                                
                                Text("Mar Paul R. Palacio    ", textAlign: TextAlign.right),
                                Text("     Add bio", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
                              ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 50),
                          child: Row (
                          children: [
                            Text("${posts.length} posts"),
                            const Text(" 10 following"),
                            Text("  $count followers")
                          ],
                        ),),
                        

                      ],
                    ),
                    
                  
                  ],
                ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Divider(color: Color.fromRGBO(0, 0, 0, 0.1)),
              ), 
              
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child:  Row(
                children: [
                      
                  Icon(Icons.tag),
                  Text("POSTS   "),

                  Icon(Icons.image),
                  Text("REELS   "),
                
                  Icon(Icons.bookmark),
                  Text("SAVED   "),

                  Icon(Icons.emoji_emotions),
                  Text("TAGGED    ")
                  
                ],
              ),
              
              ),
              


              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 275, 50),
                
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  
                  shape: const CircleBorder(),
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add, color: Colors.white,),
                ),
              ),


              Expanded(child: listPosts())
            ],
            //mainAxisAlignment: MainAxisAlignment.center,
            
          )
        ),
      ),
    );
  }
}