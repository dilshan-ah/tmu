import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakePost extends StatefulWidget {
  const MakePost({Key? key}) : super(key: key);

  @override
  _MakePostState createState() => _MakePostState();
}

class _MakePostState extends State<MakePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),

        title: Text("Make A Post",style: TextStyle(
          color: Colors.white,
          fontFamily: "Rubik",
          fontWeight: FontWeight.w600
        ),),

        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: FlatButton(
              color: Theme.of(context).accentColor,
                height: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(5)
                ),
                onPressed: (){},
                child: Text("POST",style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik"
              ),
              maxLength: 1000,
              maxLines: 50,
              decoration: InputDecoration(
                isDense: true,
                contentPadding:EdgeInsets.fromLTRB(20,20,20,0),
                filled: true,
                border: InputBorder.none,
                hintText: "What is in your mind ?",
                hintStyle: TextStyle(
                  color: Color(0xff828282),
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(
                child: Stack(
                  children:[
                    Image(
                      fit: BoxFit.contain,
                      image: AssetImage("asset/image/postimg.png"),
                    ),

                    Positioned(
                      top: 10,
                        right: 10,
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.7)
                            ),
                            child: Icon(Icons.close,color: Colors.white,size: 20,),
                          ),
                        )
                    )
                  ]
                ),
              )
          ),
          Container(
            height: 70,
            padding: EdgeInsets.all(10),
            color: Color(0xff1C1F23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.photo,color: Theme.of(context).accentColor),
                      Text("Image",style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500
                      ))
                    ],
                  ),
                ),

                InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.video_camera_back,color: Theme.of(context).accentColor,),
                      Text("Video",style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
