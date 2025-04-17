import 'package:flutter/material.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_circular_img_bg.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_roundedbutton.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_textfield.dart';
import 'package:spotify_clone/UI_Part%20/intro_page.dart';
import 'package:spotify_clone/dashboard/dashboard_screen.dart';

class ChooseArtistPage extends StatefulWidget {
  @override
  State<ChooseArtistPage> createState() => _ChooseArtistPageState();
}

class _ChooseArtistPageState extends State<ChooseArtistPage> {
List<Map<String,dynamic>> myArtist=[
  {
    "imgPath": "assets/images/1.jpg",
    "name":"Members",
  },
  {
    "imgPath": "assets/images/2.jpeg",
    "name":"after burners",
  },
  {
    "imgPath": "assets/images/4.jpg",
    "name":"peaceful army",
  },{
    "imgPath": "assets/images/5.jpg",
    "name":"bryce vein",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"weekend",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"Members",
  },
  {
    "imgPath": "assets/images/2.jpeg",
    "name":"after burners",
  },
  {
    "imgPath": "assets/images/4.jpg",
    "name":"peaceful army",
  },{
    "imgPath": "assets/images/5.jpg",
    "name":"bryce vein",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"weekend",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"Members",
  },
  {
    "imgPath": "assets/images/2.jpeg",
    "name":"after burners",
  },
  {
    "imgPath": "assets/images/4.jpg",
    "name":"peaceful army",
  },{
    "imgPath": "assets/images/5.jpg",
    "name":"bryce vein",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"weekend",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"Members",
  },
  {
    "imgPath": "assets/images/2.jpeg",
    "name":"after burners",
  },
  {
    "imgPath": "assets/images/4.jpg",
    "name":"peaceful army",
  },{
    "imgPath": "assets/images/5.jpg",
    "name":"bryce vein",
  },
  {
    "imgPath": "assets/images/1.jpg",
    "name":"weekend",
  },

];
List<int> selectedArtist= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroPage()));
                    },
                    child: Image.asset('assets/logo/Chevron_Left.png',width: 60,height: 60,)),
                Text('Choose 3 or more artist you like',style:TextStyle(fontSize:19,color: Colors.white) ,),
              ],
            ),
            Padding(
    padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 1.0),
    child: TextField(
    decoration: getSearchArtistTextFieldDecoration(),
    ),
    ),
            SizedBox(height: 20,),
            Expanded(
              child: Stack(
                children:[
                  GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                    mainAxisSpacing: 11,
                    crossAxisSpacing: 11
                  ),
                  itemBuilder: (_, index) => InkWell(
                    onTap: (){
                      if(!selectedArtist.contains(index)){
                      selectedArtist.add(index);
                      setState(() {
                      });}
                     else {selectedArtist.remove(index);
                     setState(() {
                     });}
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCircularImgBg(imgPath: myArtist[index]['imgPath'],isSelected: selectedArtist.contains(index),),
                        SizedBox(height: 6,),
                        Text(myArtist[index]['name'],style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  itemCount: myArtist.length,

                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child:selectedArtist.length>=3? Center(
                      child: MyCustomRoundedButton(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                        },
                        text: 'Done',
                      textColor: Colors.black,
                      bgColor: Colors.white,
                      mHeight: 48,
                      mWidth: 100,
                        isOutlined: false,
                      ),
                    ):null,
                    height: 100,
                    width: double.infinity,
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                         begin:Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         colors: [
                       Colors.transparent,
                       Colors.black

                         ]
                     )
                   ),
                    //decoration: ,
                  ),
                )
                ]
              ),
            )
          ]
        )

    );
  }
}
