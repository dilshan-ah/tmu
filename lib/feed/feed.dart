import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tmudirect/make_post/make_post.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
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
              style: TextStyle(fontFamily: "RozhaOne", fontSize: 23),
              children: [
                TextSpan(
                    text: "TMU", style: TextStyle(color: Color(0xffF89009))),
                TextSpan(text: "DIRECT"),
              ]),
        ),
        actions: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xff3D3D3D)),
                shape: BoxShape.circle),
            child: Icon(
              Icons.feed,
              color: Color(0xff3D3D3D),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: Container(
              width: 45,
              height: 45,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor.withOpacity(0.7),
                  border: Border.all(width: 2, color: Color(0xff3D3D3D)),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/image/user.webp'),
                      fit: BoxFit.contain)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index < 1) {
                      return SizedBox(
                        width: 15,
                      );
                    }
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffF89009),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          'Following',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: "Rubik"),
                        )),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xff1C1F23),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MakePost()));
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(0.7),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('asset/image/user.webp'),
                                    fit: BoxFit.contain)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1, color: Color(0xff3A3B3C))),
                            child: Text(
                              "What do you think ?",
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(height: 4, color: Color(0xff3A3B3C)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_camera_back,
                                size: 25,
                                color: Color(0xffF3425F),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Video",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "Rubik"),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              Icon(
                                Icons.image_outlined,
                                size: 25,
                                color: Color(0xff45BD62),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Image",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "Rubik"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff1C1F23),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(0.7),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Color(0xff3D3D3D)),
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'asset/image/user.webp'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Elizabeth",
                                          style: TextStyle(
                                              fontFamily: "Rubik",
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: FaIcon(
                                        FontAwesomeIcons.ellipsisVertical,
                                        color: Color(0xff4F4F4F),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              height: 220,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("asset/image/postimg.png"),
                                      fit: BoxFit.cover)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.thumb_up_alt_rounded,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Text(
                                        "300",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.thumb_down,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Text(
                                        "26",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                                                ),
                                                builder: (context) {
                                                  return Container(
                                                    height: MediaQuery.of(context).size.height/1.075,
                                                    child: Column(
                                                      children: [
                                                        Material(
                                                          elevation: 2,
                                                          child: Container(
                                                            padding: EdgeInsets.all(10),
                                                            width: double.infinity,
                                                            height: 40,
                                                            child: Text("Comment",
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                fontFamily: "Rubik",
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(child: ListView.builder(itemBuilder: (context,index){
                                                          return Padding(
                                                            padding: const EdgeInsets.symmetric(vertical: 20),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(width: 10,),
                                                                Container(
                                                                  width: 40,
                                                                  height: 40,
                                                                  decoration: BoxDecoration(
                                                                    shape: BoxShape.circle,
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: AssetImage("asset/image/Dilshan1.png")
                                                                    )
                                                                  ),
                                                                ),
                                                                SizedBox(width: 10,),
                                                                Column(
                                                                  children: [
                                                                    Container(
                                                                      padding: EdgeInsets.all(10),
                                                                      decoration: BoxDecoration(
                                                                        color: Color(0xffF0F2F5),
                                                                        borderRadius: BorderRadius.circular(10)
                                                                      ),
                                                                      child: RichText(
                                                                        overflow: TextOverflow.ellipsis,
                                                                        text: TextSpan(
                                                                          text: "This is a very awesome post",
                                                                          style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontFamily: "Rubik",
                                                                            fontSize: 12
                                                                          )
                                                                        ),
                                                                        maxLines: 4,
                                                                      ),
                                                                    ),
                                                                    SizedBox(height: 5,),
                                                                    Row(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text("6",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500),),
                                                                            SizedBox(width: 3,),
                                                                            InkWell(
                                                                              child: Icon(Icons.thumb_up,size: 16,color: Colors.grey,),
                                                                            )
                                                                          ],
                                                                        ),

                                                                        SizedBox(width: 10,),

                                                                        Row(
                                                                          children: [
                                                                            Text("1",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500)),
                                                                            SizedBox(width: 3,),
                                                                            InkWell(
                                                                              child: Icon(Icons.thumb_down,size: 16,color: Colors.grey),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          );
                                                        },itemCount: 12,)),

                                                        Container(
                                                          padding: EdgeInsets.all(10),
                                                          height: 60,
                                                          color: Color(0xffF0F2F5),
                                                          child: TextField(
                                                            decoration: InputDecoration(
                                                              border: InputBorder.none,
                                                              helperText: "Write a comment...",
                                                              hintStyle: TextStyle(
                                                                color: Colors.grey
                                                              )
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          icon: Icon(
                                            Icons.insert_comment,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        text:
                                            "Lily HIdayani  I like this music because this music tells about my love with someone I love ....",
                                        style: TextStyle(
                                            fontFamily: "Rubik", fontSize: 10)),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "30 Comments | 12 Share",
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff6D6D6D)),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "30 Minuties ago",
                                    style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff6D6D6D)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
