import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_roundedbutton.dart';
import 'package:spotify_clone/dashboard/navigation/library/settings_page.dart';

class MyProfileNavPage extends StatelessWidget {
  MyProfileNavPage({super.key});
  List<Map<String,dynamic>> myPlayListSongs=[
    {
      'imgPath':'assets/dashBoard/profile1.png',
      'title':'Shazam',
      'subTitle':'7 likes'
    },
    {
      'imgPath':'assets/dashBoard/profile2.png',
      'title':'RoadTrip',
      'subTitle':'4 likes'
    },
    {
      'imgPath':'assets/dashBoard/profile3.png',
      'title':'Study',
      'subTitle':'10 likes'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.38,

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                         AppColors.primaryColor,
                         Colors.black.withOpacity(0.5),
                      ]
                  )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(onTap:(){
                          Navigator.pop(context);
                          },
                      child: Icon(Icons.chevron_left_sharp,size: 40,color: Colors.white,)),
                        ],
                      ),
                    ),
                    Image.asset('assets/dashBoard/profilephoto.png',width: 80,height: 80,),

                   Padding(
                     padding: const EdgeInsets.only(top: 10.0,bottom: 30.0),
                     child: MyCustomRoundedButton(
                       text: 'Edit Profile',
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));

                       },
                       isOutlined: false,
                       bgColor: Colors.grey.shade800,
                       textColor: Colors.white,
                       mWidth: 130,
                       mHeight: 40,
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                             Text("23",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text("PLAYLISTS",style: TextStyle(fontSize: 14,color: Colors.grey.shade700,fontWeight: FontWeight.bold),),

                            ],
                          ),
                          Column(
                            children: [
                              Text("58",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text("FOLLOWERS",style: TextStyle(fontSize: 14,color: Colors.grey.shade700,fontWeight: FontWeight.bold),),

                            ],
                          ),
                          Column(
                            children: [
                              Text("43",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text("FOLLOWING",style: TextStyle(fontSize: 14,color: Colors.grey.shade700,fontWeight: FontWeight.bold),),

                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0,bottom: 15.0),
                    child: Text("Playlists",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                      itemCount: myPlayListSongs.length,
                      itemBuilder: (_,index){
                           return ListTile(
                             leading: Image.asset(myPlayListSongs[index]['imgPath'],width: 50,height: 50,) ,
                             title: Text(myPlayListSongs[index]['title'],style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                             subtitle: Text(myPlayListSongs[index]['subTitle'],style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                             trailing: Icon(Icons.chevron_right_outlined,size: 30,color: Colors.white,),
                     );
                  }),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0,right: 21.0,top: 20.0),
                    child: Row(
                      children: [
                        Expanded(child: Text("See all playlist",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                        Icon(Icons.chevron_right_outlined,size: 30,color: Colors.white,),

                      ],
                    ),
                  ),


                ],
              ))

            ],
          ),
        ),
      ),
    );
  }
}
