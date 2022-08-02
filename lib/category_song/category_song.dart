import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySong extends StatefulWidget {
  const CategorySong({Key? key}) : super(key: key);

  @override
  _CategorySongState createState() => _CategorySongState();
}

class _CategorySongState extends State<CategorySong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                ),
                image: DecorationImage(
                  image: AssetImage("asset/image/hiphop.jpg")
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle
                      ),
                      width: 40,
                      height: 40,
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 16,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Hip Hop",style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w500,
                fontSize: 22
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("132 songs",style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Rubik",
                  fontSize: 18
              ),),
            ),

            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor.withOpacity(0.7),

                              image: DecorationImage(
                                  image: AssetImage('asset/image/song.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        title: Text("Ney ( Beautiful turkish ney)",style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),),
                        subtitle: Text("Hazan Mevsemi",style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Rubik",
                            fontSize: 10
                        ),),
                        trailing: InkWell(
                          child: FaIcon(FontAwesomeIcons.ellipsisVertical,color: Colors.white,size: 20,),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
