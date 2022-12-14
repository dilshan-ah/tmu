import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
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

            child: Icon(Icons.podcasts,color: Color(0xff3D3D3D),),
          ),
          SizedBox(width: 10,),
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection("users-picture").
              doc(FirebaseAuth.instance.currentUser!.email).collection("images").
              doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
              builder: (BuildContext context, AsyncSnapshot snapshot){
                var data = snapshot.data;
                if(data==null){
                  return InkWell(
                    child: Container(
                      width: 45,
                      height: 45,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor.withOpacity(0.7),
                        border: Border.all(width: 2, color: Color(0xff3D3D3D)),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.person,size: 50,),
                    ),
                  );
                }else{
                  return InkWell(
                    child: Container(
                      width: 45,
                      height: 45,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor.withOpacity(0.7),
                          border: Border.all(width: 2, color: Color(0xff3D3D3D)),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(data["downloadUrl"]),
                              fit: BoxFit.contain)),
                    ),
                  );
                }
              }
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Categories",style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 18,
                  color: Colors.white
              ),),
            ),
            SizedBox(height: 20,),
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
                              'Business',
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 210,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15
                  ),
                  itemBuilder: (context,index){
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
                                      child: Text("Live",style: TextStyle(
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
      ),
    );
  }
}
