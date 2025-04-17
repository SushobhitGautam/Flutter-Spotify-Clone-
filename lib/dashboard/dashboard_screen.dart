import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_compact_musicplayer_widget.dart';
import 'package:spotify_clone/dashboard/navigation/home_bottom_nav_page.dart';
import 'package:spotify_clone/dashboard/navigation/library/my_profile_nav_page.dart';
import 'package:spotify_clone/dashboard/navigation/library_bottom_nav_page.dart';
import 'package:spotify_clone/dashboard/navigation/search_bottom_nav_page.dart';
import 'package:palette_generator/palette_generator.dart';

class DashboardScreen extends StatefulWidget {
   DashboardScreen({super.key});
   @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedBottomIndex=0;
  PaletteGenerator? paletteGenerator;
  double currentValue=0;
  bool isPlaying=false;
@override
  void initState() {
  super.initState();
  initializePaletteGenerator();
  }
  initializePaletteGenerator()async{
  paletteGenerator= await getColorPalette(" ");
  }
  List<Widget> mBottomNavPages=[
    HomeBottomNavPage(),
    SearchBottomNavPage(),
    LibraryBottomNavPage(),
    MyProfileNavPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children:[
        Padding(
          padding: const EdgeInsets.only(bottom: 67.0),
          child: mBottomNavPages[selectedBottomIndex],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: (){
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
            builder: (_){
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primaryColor,
                        Colors.black,
                        Colors.black
                      ])
                ),

                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 40.0),
                      child: Row(
                        children: [
                           InkWell(onTap:(){
                             Navigator.pop(context);
                           },
                      child: Image.asset('assets/dashBoard/downarrow.png',width: 25,height: 25,color: Colors.black,)),
                          Expanded(child: Center(child: Text('Song ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),
                          Image.asset('assets/dashBoard/3dots.png',width: 28,height: 28,color: Colors.black,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 40.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                          child: Image.asset('assets/images/1.jpg',width: 350,height: 350,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Artist songs',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),),
                                Text('Artist name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,overflow: TextOverflow.fade),)
                              ],
                            ),
                          ),
                          Image.asset('assets/dashBoard/heart.png',width: 30,height: 30,color: Colors.white,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10,bottom: 15.0),
                      child: StatefulBuilder(builder: (_,ss){
                        return SliderTheme(
                          data: SliderThemeData(
                            overlayShape: SliderComponentShape.noOverlay
                          ),
                          child: Slider(min: 0,
                              activeColor: Colors.white,
                              thumbColor: Colors.white,
                              inactiveColor: Colors.grey.withOpacity(0.4),
                              max: 100,
                              value: currentValue,
                              onChanged: (value){
                            currentValue=value;
                            ss(() {

                            });
                              }),
                        );
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/dashBoard/Shuffle.png',width: 50,height: 50,color: Colors.white,),
                          Image.asset('assets/dashBoard/Back.png',width: 50,height: 50,color: Colors.white,),
                         StatefulBuilder(builder: (context,ss){
                           return InkWell(
                               onTap: (){
                                 isPlaying = !isPlaying;
                                 setState(() {
                                 });
                               },
                               child: Icon(isPlaying?Icons.pause_circle_filled_sharp:Icons.play_circle_filled_sharp,color: Colors.white,size: 80,));
                         }),
                          Image.asset('assets/dashBoard/forward.png',width: 40,height: 40,color: Colors.white,),
                          Image.asset('assets/dashBoard/Repeat.png',width: 50,height: 50,color: Colors.white,),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
                      child: Row(
                        children: [
                        Icon(Icons.bluetooth,size: 30,color:AppColors.primaryColor,),
                          Expanded(child: Text('Bluetooth Name',style: TextStyle(fontSize: 13,color: Colors.white),)),
                          Image.asset('assets/dashBoard/Share.png',width: 30,height: 30,color: Colors.white,),
                          SizedBox(width: 10,),
                          Image.asset('assets/dashBoard/nextqueue.png',width: 30,height: 30,color: Colors.white,),


                        ],
                      ),
                    )

                  ],
                ),
              );
            });
            },
            child: MyCompactMusicPlayerWidget(
                songTitle: 'SZA',
                albumTitle:'Drake' ,
                thumbNailPath: 'assets/images/3.png',
                bgColor: Color(0xFF550A1C),
              isBluetooth: true,
              bluetoothName: 'Galaxy buds ',
            ),
          )
        )
      ]),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedBottomIndex,
          onTap: (value){
          selectedBottomIndex=value;
          setState(() {});
          },
          backgroundColor:Colors.black,
          items: [
        BottomNavigationBarItem(icon: Image.asset('assets/logo/Home_outline.png'),label: 'Home',
        activeIcon:Image.asset('assets/logo/Home_Solid.png',color: Colors.white,) ),
        BottomNavigationBarItem(icon: Image.asset('assets/logo/Search_outline.png'),label: 'Search',
            activeIcon:Image.asset('assets/logo/Search_Solid.png',color: Colors.white,)),
        BottomNavigationBarItem(icon: Image.asset('assets/logo/Library_outline.png'),label: 'Library',
            activeIcon:Image.asset('assets/logo/Library_Solid.png',color: Colors.white,)),
      ]),
    );
  }

}
// SizedBox(
// width: 80,
// height: 80,
// child: Stack(
// children:[
// Image.asset('assets/dashBoard/Play.png',width: 80,height: 80,color: Colors.white,),
// InkWell(
// onTap: (){isPlaying != isPlaying;
// setState(() {
//
// });},
// child: Center(
// child: isPlaying?
// Icon(Icons.pause,
// color: Colors.black,
// size: 50,)
//     : Icon(Icons.play_arrow,
// color: Colors.black,
// size: 50,))),
// ]
// ),
// ),