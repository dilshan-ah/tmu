import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>  with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor.withOpacity(0.6),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("asset/image/user.webp")
                              )
                            ),
                          ),
                          Positioned(
                            right: 0,
                              bottom: 10,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.6)
                                ),

                                child: Icon(Icons.edit,size: 12,color: Colors.white,),
                              )
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Elizabeth",style: TextStyle(
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white
                      ),),
                      SizedBox(height: 10,),
                      Text("Youtuber Music",style: TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Color(0xffC7C7C7)
                      ),),
                      SizedBox(height: 10,),
                      Text("#musicmahakarya",style: TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Theme.of(context).accentColor
                      ),)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("100",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontSize: 14,
                                    color: Colors.white
                                ),),
                                SizedBox(height: 10,),
                                Text("Follower",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: Colors.white
                                ),),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Text("200",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontSize: 14,
                                    color: Colors.white
                                ),),
                                SizedBox(height: 10,),
                                Text("Following",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: Colors.white
                                ),),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Text("10",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontSize: 14,
                                    color: Colors.white
                                ),),
                                SizedBox(height: 10,),
                                Text("Like",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: Colors.white
                                ),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        FlatButton(
                          minWidth: MediaQuery.of(context).size.width/2.2,
                          color: Theme.of(context).accentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          onPressed: (){},
                          child: Text("Edit Profile",style: TextStyle(
                            color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 60,
              child: TabBar(
                automaticIndicatorColorAdjustment: true,
                unselectedLabelColor: Color(0xff737488),
                indicatorColor: Theme.of(context).accentColor,
                labelColor: Theme.of(context).accentColor,
                controller: tabController,
                tabs: [
                  Tab(icon: Icon(Icons.feed,size: 30),),
                  Tab(icon: Icon(Icons.music_note,size: 30,),),
                  Tab(icon: Icon(Icons.headset_rounded,size: 30),),
                  Tab(icon: Icon(Icons.podcasts,size: 30),)
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/1.225,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
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
                                            Container(
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
                                            SizedBox(
                                              width: 10,
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Dilshan Ahmed",
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
                                            fit: BoxFit.cover
                                        )
                                    ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            IconButton(
                                                onPressed: (){},
                                                icon: Icon(Icons.thumb_up_alt_rounded,color: Colors.white,size: 16,)
                                            ),
                                            Text("300",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12
                                            ),),

                                            IconButton(
                                                onPressed: (){},
                                                icon: Icon(Icons.thumb_down,color: Colors.white,size: 16,)
                                            ),
                                            Text("26",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12
                                            ),),

                                            IconButton(
                                                onPressed: (){},
                                                icon: Icon(Icons.insert_comment,color: Colors.white,size: 16,)
                                            ),
                                            Text("30",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12
                                            ),),

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
                                              text: "Lily HIdayani  I like this music because this music tells about my love with someone I love ....",
                                              style: TextStyle(
                                                  fontFamily: "Rubik",
                                                  fontSize: 10
                                              )
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text("30 Comments | 12 Share",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff6D6D6D)
                                        ),),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text("30 Minuties ago",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff6D6D6D)
                                        ),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            if(index < 1){
                              return ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Color(0xff4F4F4F),
                                    shape: BoxShape.circle,
                                  ),

                                  child: Icon(Icons.add,size: 35,),
                                ),
                                title: Text("Add Song",style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14
                                ),),
                              );
                            }
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
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 210,
                            childAspectRatio: 3 / 5.2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15
                        ),
                        itemBuilder: (context,index){
                          if(index < 1){
                            return Container(
                              width: MediaQuery.of(context).size.width/2,
                              //margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff1C1F23)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    //height: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Theme.of(context).accentColor.withOpacity(0.6),
                                        child: Icon(Icons.mic,size: 70,color: Theme.of(context).accentColor,)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text("Start Podcasting",style: TextStyle(
                                    fontFamily: "Rubik",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                  ),)
                                ],
                              ),
                            );
                          }
                          return Container(
                            width: MediaQuery.of(context).size.width/2,
                            //margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff1C1F23)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 210,
                            childAspectRatio: 3 / 4,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15
                        ),
                        itemBuilder: (context,index){
                          if(index < 1){
                            return Container(
                              width: MediaQuery.of(context).size.width/2,
                              //margin: EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff1C1F23)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    //height: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.red.withOpacity(0.3),
                                        child: Icon(Icons.podcasts,size: 70,color: Colors.red,)
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text("Go live",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            );
                          }
                          return Container(
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff1C1F23)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('asset/image/image 33.png')
                                      )
                                  ),

                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(0.6),
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.remove_red_eye,size: 12,color: Colors.white,),
                                                SizedBox(width: 3,),
                                                Text("1.2k",style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Rubik",
                                                    fontSize: 8
                                                ),)
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.red,
                                            ),
                                            child: Text("39:52",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: "Rubik"
                                            ),),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).accentColor.withOpacity(0.7),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage("asset/image/user.webp")
                                            )
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text("Bela Sintiya",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Rubik",
                                                fontSize: 12
                                            ),),
                                          Text("120k followers",
                                            style: TextStyle(
                                                color: Color(0xff4F4F4F),
                                                fontFamily: "Rubik",
                                                fontSize: 10
                                            ),)
                                        ],
                                      ),
                                      InkWell(child: FaIcon(FontAwesomeIcons.ellipsisVertical,color: Colors.white,size: 18,))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
