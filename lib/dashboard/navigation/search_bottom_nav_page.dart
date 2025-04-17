import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_textfield.dart';

class SearchBottomNavPage extends StatelessWidget {
   SearchBottomNavPage({super.key});
  List<Map<String,dynamic>> yourTopGenre=[
    {
      'imagePath': 'assets/dashBoard/pop.png'
    },
    {
      'imagePath': 'assets/dashBoard/indie.png'
    },
    {
      'imagePath': 'assets/dashBoard/pop.png'
    },
    {
      'imagePath': 'assets/dashBoard/indie.png'
    },
    {
      'imagePath': 'assets/dashBoard/pop.png'
    },
    {
      'imagePath': 'assets/dashBoard/indie.png'
    },
  ];
  List<Map<String,dynamic>> yourPopularPodcastCategory=[
    {
      'imagePath': 'assets/dashBoard/comedy.png'
    },
    {
      'imagePath': 'assets/dashBoard/comedy.png'
    },
    {
      'imagePath': 'assets/dashBoard/news and piloictics.png'
    },
    {
      'imagePath': 'assets/dashBoard/comedy.png'
    },
    {
      'imagePath': 'assets/dashBoard/news and piloictics.png'
    },
    {
      'imagePath': 'assets/dashBoard/comedy.png'
    },
    {
      'imagePath': 'assets/dashBoard/news and piloictics.png'
    },
    {
      'imagePath': 'assets/dashBoard/comedy.png'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 10,),
             titleUI(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 10.0),
                child: TextField(
                  decoration: getSearchArtistTextFieldDecoration(
                    mText: 'Artist, songs, or podcast',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 10.0,bottom: 8.0),
                child: Text('Your top genre',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              yourTopGenreUI(),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 10.0),
                child: Text('Popular podcast categories',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
               popularPodcastCategoryUI(),
               Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 10.0),
                child: Text('Browse All',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              browseAllUi()
            ],
          ),
        ),
      ),
    );
  }
  Widget titleUI(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('Search',style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        Spacer(),
        Image.asset('assets/images/camera.png',width: 32,height: 32,),
        SizedBox(width: 20,)
      ],
    );
  }
  Widget yourTopGenreUI(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 12.0),
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
            itemCount: yourTopGenre.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.only(right: 13.0,),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(yourTopGenre[index]['imagePath'],
                width: 190,
              fit: BoxFit.cover,),
            ),
          );
        }),
      ),
    );
  }
  Widget popularPodcastCategoryUI(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 12.0),
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: yourPopularPodcastCategory.length,
            itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(yourPopularPodcastCategory[index]['imagePath'],
                width: 190,
              fit: BoxFit.cover,),
            ),
          );
        }),
      ),
    );
  }
  Widget browseAllUi(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: 600,
        width: 400,
        child: GridView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: yourPopularPodcastCategory.length,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
              childAspectRatio:16/9
        ), itemBuilder: (_,index){
        return ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(yourPopularPodcastCategory[index]['imagePath'],
            width: 180,
            height: 180,
          fit: BoxFit.cover,),
        );
        }),
      ),
    );
  }

}
