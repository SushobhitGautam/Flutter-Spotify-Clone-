import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNavPage extends StatefulWidget {
  HomeBottomNavPage({ super.key});

  @override
  State<HomeBottomNavPage> createState() => _HomeBottomNavPageState();
}

class _HomeBottomNavPageState extends State<HomeBottomNavPage> {
List<Map<String,dynamic> > mRecentlyPlayedList=[
  {
    'imgPath':'assets/images/7.png',
    'name':'1(Remastered)'
  },
  {
    'imgPath':'assets/images/8.png',
    'name':'Lana Del Rey'
  },
  {
    'imgPath':'assets/images/9.png',
    'name':'Marvin Gaye'
  },
  {
    'imgPath':'assets/images/10.png',
    'name':'Indie Pop'
  },
];
List<Map<String,dynamic> > mEditorPicks=[
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },
  {
    'imgPath':'assets/images/5.png',
    'name':'Indie Pop'
  },

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          recentlyPlayedUI(),
          recentlyPlayedListUI(),
          yourSpotifyWrappedUI(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Editor's picks",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(height: 20,),
          Expanded(child: editorPicks()),

        ],
      ),
    );
  }
Widget recentlyPlayedUI(){
  return Column(
      children:[
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 6.0,top: 15.0,bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(child: Text("Recently Played ",style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold),)),
              Image.asset('assets/images/Vector.png',width: 25,height: 25,),
              SizedBox(width: 12,),
              Image.asset('assets/images/orientation lock.png',width: 25,height: 25,),
              SizedBox(width: 12,),
              Image.asset('assets/images/Settings.png',width: 25,height: 25,),
              SizedBox(width: 12,),
            ],
          ),
        ),

      ]
  );
}
Widget recentlyPlayedListUI(){
  return SizedBox(
    height: 170,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: mRecentlyPlayedList.length,
        itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Image.asset(mRecentlyPlayedList[index]['imgPath'],width: 150,height: 150,),
                Center(child: Text(mRecentlyPlayedList[index]['name'],style: TextStyle(fontSize: 14,color: Colors.white),))
              ],
            ),
          );
        }),
  );
}
Widget yourSpotifyWrappedUI(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 6.0,top: 10.0,bottom: 8.0),
      child: Row(
        children: [
       Image.asset('assets/images/2021.png',width: 60,height: 60,),
          SizedBox(width: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('#SPOTIFYWRAPPED',style: TextStyle(fontSize: 12,color: Colors.grey),),
              Text('Your 2021 in review',style: TextStyle(fontSize: 28,color: Colors.white,fontWeight:FontWeight.bold),),

            ],
          )
        ],
      ),
    );
}
Widget editorPicks(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,),
      child: SizedBox(
        height:300,
        width: double.infinity,
        child: ListView.builder(
            itemCount: mEditorPicks.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_,index){
        return Column(
          children: [
            Image.asset(mEditorPicks[index]['imgPath'],width: 170,height: 170,),
            SizedBox(height: 10,),
            Text(mEditorPicks[index]['name'],style: TextStyle(color: Colors.white,fontSize: 15,),)
          ],
        );
        }),
      ),
    );
}

}
