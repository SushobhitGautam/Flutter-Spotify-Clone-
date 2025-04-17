import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';
import 'package:spotify_clone/UI_Part%20/choose_artist_page.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_roundedbutton.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_textfield.dart';

class CreateAccountPage extends StatefulWidget {

   CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  int selectedIndex=0;
  List<Widget> allPages=[];
  bool is1Selected=false;
  bool is2Selected=false;
  @override
  void initState() {
    super.initState();
    allPages=[
      steponeUI(),
      steptwoUI(),
      stepthreeUI(),
      stepfourUI(is1Selected,is2Selected),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: (){
            if(selectedIndex>0){
              selectedIndex--;
              setState(() {});
            } else{
              Navigator.pop(context);
            }
          },
            child: Image.asset('assets/logo/Chevron_Left.png')
        ),
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('Create Account',style: TextStyle(fontSize:19,color: Colors.white),),
        ),
      ),
      backgroundColor:Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            allPages[selectedIndex],
            MyCustomRoundedButton(onTap: (){
              if(selectedIndex<3){
                selectedIndex++;
                setState(() {});
              }
              else{
                //next page
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ChooseArtistPage()));
              }
            },
                text: selectedIndex<3?'Next':'Create an Account',
            textColor: Colors.black,
            isOutlined: false,
            bgColor: AppColors.whiteColor,
            mWidth: selectedIndex<3?120:170,
            mHeight: 50,),
            SizedBox(height: 40,),
    ]
    )
    );
  }
}
Widget steponeUI()=>Padding(
  padding: const EdgeInsets.all(18.0),
  child: SizedBox(
    width: 380,
    height: 170,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(" What's your email? ",style: TextStyle(fontSize: 25,color: Colors.white,),),
        TextField(
          decoration: getCreateAccTextFieldDecoration(),
        ),
        SizedBox(height: 3,),
        Text("  You need to confirm this email later.",style: TextStyle(fontSize: 13,color: Colors.white,),),



      ],
    ),
  ),
);
Widget steptwoUI()=>Padding(
  padding: const EdgeInsets.all(18.0),
  child: SizedBox(
    width: 380,
    height: 170,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(" Create a password ",style: TextStyle(fontSize: 25,color: Colors.white,),),
        TextField(
          decoration: getCreateAccTextFieldDecoration(),
        ),
        SizedBox(height: 3,),
        Text("  Use atleast 8 characters.",style: TextStyle(fontSize: 13,color: Colors.white,),),



      ],
    ),
  ),
);
Widget stepthreeUI()=>Padding(
  padding: const EdgeInsets.all(18.0),
  child: SizedBox(
    width: 380,
    height: 170,
    child: Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      spacing: 11,
      runSpacing: 11,
      children: [
        Text(" What's your Gender? ",style: TextStyle(fontSize: 25,color: Colors.white,),),
        MyCustomRoundedButton(onTap: (){},
            text:'Male',
        mHeight: 40,
        mWidth: 90,
        isOutlined: true,
        textColor: Colors.white,),
        MyCustomRoundedButton(onTap: (){},
          text:'Female',
          mHeight: 40,
          mWidth: 90,
          isOutlined: true,
          textColor: Colors.white,),
        MyCustomRoundedButton(onTap: (){},
          text:'Prefer not to say',
          mHeight: 40,
          mWidth: 150,
          isOutlined: true,
          textColor: Colors.white,),
        MyCustomRoundedButton(onTap: (){},
          text:'Other',
          mHeight: 40,
          mWidth: 90,
          isOutlined: true,
          textColor: Colors.white,),






      ],
    ),
  ),
);
Widget stepfourUI(is1Selected,is2Selected)=>Expanded(
  child: Padding(
    padding: const EdgeInsets.all(18.0),
    child: SizedBox(
      width: 380,
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" What's your name? ",style: TextStyle(fontSize: 25,color: Colors.white,),),
          TextField(
            decoration: getCreateAccTextFieldDecoration(),
          ),
          SizedBox(height: 3,),
          Text("  This appears on your spotify profile.",style: TextStyle(fontSize: 10,color: Colors.white,),),
          SizedBox(height: 25,),
          Divider(color: AppColors.greyColor,height:3,),
          SizedBox(height: 25,),
          Text('By tapping on “Create account”, you agree to the spotify Terms of Use.',style: TextStyle(fontSize: 12,color: Colors.white,),),
          SizedBox(height: 15,),
          Text('Terms of Use',style: TextStyle(fontSize: 12,color: AppColors.primaryColor,),),
          SizedBox(height: 15,),
          Text('To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.',style: TextStyle(fontSize: 12,color: AppColors.whiteColor,),),
        ],
      ),
    ),
  ),
);
