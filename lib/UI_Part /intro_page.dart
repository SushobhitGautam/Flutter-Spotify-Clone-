import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';
import 'package:spotify_clone/UI_Part%20/custom_widgets/my_custom_roundedbutton.dart';
import 'package:spotify_clone/create_account/create_account_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
  body:
  Stack(
    children:[
      Image.asset('assets/images/backphoto 2.png',width:400,height: 400,),
      Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight ,
              colors: [Colors.black,
              Colors.black.withOpacity(0.3)]
          )
        ),
      ),
      Align(
alignment: Alignment.bottomCenter,
        child: bottomLoginUI(context),
      )
    ] 
  ),
    );
  }
}
 Widget bottomLoginUI(BuildContext context)=>SizedBox(
   width: double.infinity,
   child: Column(
     mainAxisAlignment: MainAxisAlignment.end,
     children:[

       Image.asset('assets/logo/spotifywhitelogo.png',width:60,height: 60,),
       SizedBox(height: 15,),
       Text('Millions of Songs \n Free on Spotify',style: TextStyle(fontSize: 25,color: Colors.white),),
       SizedBox(height: 17,),
       MyCustomRoundedButton(
         onTap:(){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountPage()));
         },
         text: 'Sign up free',
         textColor: Colors.black,
         bgColor: AppColors.primaryColor,
         isOutlined: false,
       ),
       SizedBox(height: 12,),
       MyCustomRoundedButton(
         onTap:(){},
         text: 'Continue with Google',
         textColor: Colors.white,
         bgColor: AppColors.blackColor,
         mIconPath: 'assets/logo/google Background Removed.png',
       ),
       SizedBox(height: 12,),
       MyCustomRoundedButton(
         onTap:(){},
         text: 'Continue with Facebook',
         textColor: Colors.white,
         bgColor: AppColors.blackColor,
         mIconPath: 'assets/logo/facebook.png',
       ),
       SizedBox(height: 12,),
       MyCustomRoundedButton(
         onTap:(){},
         text: 'Continue with Apple',
         textColor: Colors.white,
         bgColor: AppColors.blackColor,
         mIconPath: 'assets/logo/apple.png',
       ),
       SizedBox(height: 12,),
       TextButton(onPressed: (){}, child: Text('Log in',style: TextStyle(color: Colors.white,fontSize: 17),)),
     ],
   ),
 );