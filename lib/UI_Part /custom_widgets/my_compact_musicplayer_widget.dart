import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';
import 'package:palette_generator/palette_generator.dart';

class MyCompactMusicPlayerWidget extends StatefulWidget {
  String songTitle;
  String albumTitle;
  bool isBluetooth;
  String bluetoothName;
 double mHeight;
 Color bgColor;
 String thumbNailPath;

   MyCompactMusicPlayerWidget({
    required this.songTitle,
     required this.albumTitle,
     required this.thumbNailPath,
      this.isBluetooth=false,
      this.bluetoothName=" ",
     this.mHeight=67,
    required this.bgColor,
});

  @override
  State<MyCompactMusicPlayerWidget> createState() => _MyCompactMusicPlayerWidgetState();
}

class _MyCompactMusicPlayerWidgetState extends State<MyCompactMusicPlayerWidget> {
 PaletteGenerator? paletteGenerator;
 @override
  void initState() {
    super.initState();
    intializeColorPalette();

  }
 intializeColorPalette()async{
   paletteGenerator= await getColorPalette(widget.thumbNailPath);
   setState(() {

   });
 }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: widget.mHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: paletteGenerator!=null?paletteGenerator!.dominantColor!.color.withOpacity(0.6):widget.bgColor,
      ),
child: Padding(
    padding: EdgeInsets.all(5.0),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(widget.thumbNailPath,width: 50,height: 46,fit: BoxFit.cover,),

          ),
          SizedBox(width: 7,),
           Expanded(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.songTitle,style: TextStyle(fontSize: 25,color: Colors.white),),
                  SizedBox(width: 5,),
                  Text("- ${widget.albumTitle}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),overflow: TextOverflow.fade,),
                ],
              ),
           ),
          Column(
            children: [
              Icon(widget.isBluetooth?Icons.bluetooth:Icons.devices,color: AppColors.primaryColor,size: 35.0,),
              widget.isBluetooth? Text(widget.bluetoothName,style:TextStyle(fontSize: 9,color: AppColors.primaryColor),):Container(),
            ],
          ),
           SizedBox(width: 6,),
          Icon(Icons.pause,color: Colors.white,size: 40.0,)
        ],
      ),
    LinearProgressIndicator(
      value: 0.6,
      valueColor:AlwaysStoppedAnimation<Color>(Colors.white),
      color: Colors.white,
      backgroundColor: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),

    )
    ],
),),

    );
  }


}
