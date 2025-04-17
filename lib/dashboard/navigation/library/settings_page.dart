import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  List<String> mSetting=[
    'Account',
    'Data Saver',
    'Languages',
    'Playback',
    'Explicit Content',
    'Devices',
    'Car',
    'Social',
    'Voice Assistant & Apps',
    'Audio Quality',
    'Storage',


  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey.shade900,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 145.0),
                child: Row(
                  children: [
                    InkWell(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.chevron_left_sharp,size: 40,color: Colors.white,)),
                    Spacer(),
                    Text('Settings',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
        SizedBox(height: 25,),
        ListTile(
        leading: Image.asset('assets/dashBoard/profilephoto.png',width: 50,height: 50,) ,
        title: Text('Sushobhit Gautam',style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
        subtitle: Text('View profile',style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.chevron_right_outlined,size: 40,color: Colors.white,),
      ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 22.0,top: 20.0),
              child: ListView.builder(
                itemCount: mSetting.length,
                  shrinkWrap: true,
                  itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                  child: Row(
                    children: [
                      Text(mSetting[index],style: TextStyle(fontSize: 20,color: Colors.white,),),
                      Spacer(),
                      Icon(Icons.chevron_right_outlined,size:40,color: Colors.white,),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
