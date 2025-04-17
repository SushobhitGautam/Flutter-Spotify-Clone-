import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_roundedbutton.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_library_liked.dart';
import 'package:spotify_clone/dashboard/navigation/library/my_profile_nav_page.dart';

class LibraryBottomNavPage extends StatelessWidget {
   LibraryBottomNavPage({super.key});
  List<Map<String,dynamic>> mySavedAlbums=[
    {
      'imgPath':'assets/images/1.jpg',
      'title':'Drake',
      'subTitle':'Artist'
    },
    {
      'imgPath':'assets/images/2.jpeg',
      'title':'SZA',
      'subTitle':'Artist'
    },
    {
      'imgPath':'assets/images/3.png',
      'title':'Creator',
      'subTitle':'Artist'
    },
    {
      'imgPath':'assets/images/4.jpg',
      'title':'Travis Scott',
      'subTitle':'Artist'
    },
    {
      'imgPath':'assets/images/5.jpg',
      'title':'Tupac',
      'subTitle':'Artist'
    },
    {
      'imgPath':'assets/images/8.png',
      'title':'Lil Tecca',
      'subTitle':'Artist'
    },
    {
      'imgPath':'assets/images/9.png',
      'title':'Don Toliver',
      'subTitle':'Artist'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            yourLibraryUI(context),
            yourPlaylistOptionsUI(),
            yourRecentPlayedUI(),
             MyLibraryLiked(mBackgroundImg: 'assets/dashBoard/liked.png',
                    mImgSymbol:'assets/dashBoard/heart.png',
                    mTitle: 'Liked Songs',
                    mSubTitle: 'Playlist-58 songs'),
             MyLibraryLiked(mBackgroundImg: ' ',
                  mImgSymbol:'assets/dashBoard/BellFill.png',
                  mTitle: 'Liked Songs',
                  mSubTitle: 'Playlist-58 songs',
                  mSolidColor: Color(0xff5E3B7A),
                ),
           Padding(
             padding: const EdgeInsets.only(left: 15.0,bottom: 10.0),
             child: Text('Your saved albums',
                 style: TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white),),
           ),
           Expanded(
             child: ListView.builder(
               itemCount: mySavedAlbums.length,
                 itemBuilder: (_,index){
                   return Padding(
                     padding: const EdgeInsets.only(bottom: 10.0),
                     child: ListTile(
                       leading: ClipRRect(
                         borderRadius: BorderRadius.circular(11),
                         child: Container(
                             width: 70,
                             height: 60,
                             child: Image.asset(mySavedAlbums[index]['imgPath'],
                               width: 70,height: 60,fit: BoxFit.cover,)),
                       ) ,
                       title: Text(mySavedAlbums[index]['title'],style: TextStyle(fontSize: 20,color: Colors.white),),
                       subtitle: Text(mySavedAlbums[index]['subTitle'],style: TextStyle(fontSize: 15,color: Colors.white),),

                     ),
                   );
                 }),
           )

          ],
        ),
      ),
    );
  }
  Widget yourLibraryUI(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 10.0,bottom: 10.0),
      child: Row(
        children: [
          InkWell(onTap:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>MyProfileNavPage()));
          },
              child: Image.asset('assets/dashBoard/profile.png',width: 40,height: 40,)),
          SizedBox(width: 10,),
          Expanded(child: Text('Your Library ',style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),)),
          Image.asset('assets/dashBoard/add.png',width: 30,height: 30,),
        ],
      ),
    );
  }
  Widget yourPlaylistOptionsUI(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          height: 40,
          width: 540,
          child: Row(
            children: [
              MyCustomRoundedButton(onTap: (){}, text: 'Playlists',
                textColor: Colors.white,
                mWidth: 110,
                mHeight: 40,
                isOutlined: false,
                bgColor: Colors.grey.shade800,
              ),
              Spacer(),
              MyCustomRoundedButton(onTap: (){}, text: 'Artists',
                textColor: Colors.white,
                mWidth: 110,
                mHeight: 40,
                isOutlined: false,
                bgColor: Colors.grey.shade800,
              ),
              Spacer(),
              MyCustomRoundedButton(onTap: (){}, text: 'Albums',
                textColor: Colors.white,
                mWidth: 110,
                mHeight: 40,
                isOutlined: false,
                bgColor: Colors.grey.shade800,
              ),
              Spacer(),
              MyCustomRoundedButton(onTap: (){}, text: 'Podcast & Shows',
                textColor: Colors.white,
                mWidth: 190,
                mHeight: 40,
                isOutlined: false,
                bgColor: Colors.grey.shade800,
              ),
              Divider(

              )

            ],
          ),
        ),
      ),
    );
  }
  Widget yourRecentPlayedUI(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 10.0,bottom: 10.0,top: 10.0),
      child: Row(
        children: [
          Image.asset('assets/dashBoard/arrow-narrow-down.png',width: 20,height: 30,),
          Image.asset('assets/dashBoard/arrow-narrow-down 2.png',width: 20,height: 30,),
          SizedBox(width: 10,),
          Expanded(child: Text('Recently played ',style: TextStyle(fontSize:17,color: Colors.white,fontWeight: FontWeight.bold),)),
          Spacer(),
          Image.asset('assets/dashBoard/box.png',width: 20,height: 20,),
        ],
      ),
    );
  }

}
//            Column(
//               children: [
//                 MyLibraryLiked(mBackgroundImg: 'assets/dashBoard/liked.png',
//                     mImgSymbol:'assets/dashBoard/heart.png',
//                     mTitle: 'Liked Songs',
//                     mSubTitle: 'Playlist-58 songs'),
//                 MyLibraryLiked(mBackgroundImg: ' ',
//                   mImgSymbol:'assets/dashBoard/BellFill.png',
//                   mTitle: 'Liked Songs',
//                   mSubTitle: 'Playlist-58 songs',
//                   mSolidColor: Color(0xff5E3B7A),
//                 ),
//                 MyLibraryLiked(mBackgroundImg: 'assets/images/1.jpg',
//                   mImgSymbol:' ',
//                   mTitle: 'Drake',
//                   mSubTitle: 'Artist',
//                   wantPinSymbol: false,),
//                 MyLibraryLiked(mBackgroundImg: 'assets/images/1.jpg',
//                   mImgSymbol:' ',
//                   mTitle: 'Drake',
//                   mSubTitle: 'Artist',
//                   wantPinSymbol: false,),
//                 MyLibraryLiked(mBackgroundImg: 'assets/images/1.jpg',
//                   mImgSymbol:' ',
//                   mTitle: 'Drake',
//                   mSubTitle: 'Artist',
//                   wantPinSymbol: false,),
//                 MyLibraryLiked(mBackgroundImg: 'assets/images/1.jpg',
//                   mImgSymbol:' ',
//                   mTitle: 'Drake',
//                   mSubTitle: 'Artist',
//                   wantPinSymbol: false,),
//
//               ],
//             )