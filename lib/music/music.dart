import 'package:flutter/material.dart';
import 'package:tmudirect/category_song/category_song.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 80,
        leading: Image(
          width: 40,
          image: AssetImage('asset/image/logo.png'),
        ),

        centerTitle: false,
        titleSpacing: 0,

        title: RichText(
          text: TextSpan(
              style: TextStyle(
                  fontFamily: "RozhaOne",
                  fontSize: 23
              ),
              children: [
                TextSpan(
                    text: "TMU",
                    style: TextStyle(
                        color: Color(0xffF89009)
                    )
                ),
                TextSpan(
                    text: "DIRECT"
                ),
              ]
          ),
        ),

        actions: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: Color(0xff3D3D3D)
                ),
                shape: BoxShape.circle
            ),

            child: Icon(Icons.music_note,color: Color(0xff3D3D3D),),
          ),
          SizedBox(width: 10,),
          InkWell(
            child: Container(
              width: 45,
              height: 45,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor.withOpacity(0.7),
                  border: Border.all(
                      width: 2,
                      color: Color(0xff3D3D3D)
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/image/user.webp'),
                      fit: BoxFit.contain
                  )
              ),
            ),
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot Music",style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white
                  ),),

                  TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(
                    color: Color(0xffF89009),
                    fontFamily: "Rubik",
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),))
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 7,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    if(index < 1){
                      return SizedBox(width: 15,);
                    }
                    return Container(
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff1C1F23)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('asset/image/song.png')
                              )
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Ney",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                    ),),
                                    SizedBox(height: 10,),
                                    Text("Hazan Mevsimi",style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontSize: 10,
                                        color: Color(0xff828282)
                                    ),),
                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.thumb_up,color: Color(0xffF85F55),size: 20,
                                            )
                                        ),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down,color: Color(0xff4F4F4F),size: 20)),
                                      ],
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Color(0xff4F4F4F),
                                      shape: BoxShape.circle
                                    ),

                                    child: Icon(Icons.play_arrow),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("All Category",style: TextStyle(
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white
              ),),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            //   child: GridView.builder(
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemCount: 6,
            //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //       maxCrossAxisExtent: 200,
            //       childAspectRatio: 3 / 2,
            //       crossAxisSpacing: 15,
            //       mainAxisSpacing: 15
            //       ),
            //       itemBuilder: (context,index){
            //         return InkWell(
            //           onTap: (){
            //             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategorySong()));
            //           },
            //           child: Container(
            //             padding: EdgeInsets.all(10),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(15),
            //               image: DecorationImage(
            //                 image: AssetImage("asset/image/hiphop.jpg"),
            //                 fit: BoxFit.cover
            //               )
            //             ),
            //
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text("Hip Hop",style: TextStyle(
            //                   color: Colors.white,
            //                   fontFamily: "Rubik",
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.w600
            //                 ),),
            //                 SizedBox(height: 5,),
            //
            //                 Text("968 songs",style: TextStyle(
            //                     color: Colors.white,
            //                     fontFamily: "Rubik",
            //                     fontSize: 10,
            //                   fontWeight: FontWeight.w500
            //                 ),)
            //               ],
            //             ),
            //           ),
            //         );
            //       }
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategorySong()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("asset/image/hiphop.jpg"),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hip Hop",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 5,),

                          Text("968 songs",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategorySong()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("asset/image/rock.jpg"),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rock",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 5,),

                          Text("755 songs",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategorySong()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("asset/image/gospel.jpg"),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gospel",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 5,),

                          Text("968 songs",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategorySong()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2.4,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("asset/image/raggae.jpg"),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ragge",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 5,),

                          Text("755 songs",style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Rubik",
                              fontSize: 10,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Play List",style: TextStyle(
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Container(
              width: 45,
              height: 45,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor.withOpacity(0.7),
                  border: Border.all(
                      width: 2,
                      color: Color(0xff3D3D3D)
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/image/user.webp'),
                      fit: BoxFit.contain
                  )
              ),
            ),
              title: Text("Elizabeth",style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w500,
                fontSize: 14
              ),),
              subtitle: Text("Artis",style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Rubik",
                  fontSize: 10
              ),),
            ),
            ListTile(
              leading: Container(
                width: 45,
                height: 45,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Color(0xff4F4F4F),
                    shape: BoxShape.circle,
                ),

                child: Icon(Icons.add,size: 40,),
              ),
              title: Text("Add PlayList",style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                  fontSize: 14
              ),),
            )
          ],
        ),
      ),
    );
  }
}