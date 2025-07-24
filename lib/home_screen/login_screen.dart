import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tajawal/Screens/screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: screenWidth,
              height: screenHeight / 2,
              color: Color(0xff82B81C),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'أهلا بعودتك!',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'استمتع بتجربة تسوق فريدة انشر منتجاتك واشتري بكل سهولة',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: screenWidth,
              height: screenHeight / 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 28,
                  bottom: 28,
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff82B81C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return RegisterScreen();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          top: 8,
                          right: screenWidth * 0.2,
                          left: screenWidth * 0.2,
                        ),
                        child: Text(
                          'تسجيل دخول',
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return HomeScreen();
                       }));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                          top: 8,
                          right: screenWidth * 0.17,
                          left: screenWidth * 0.17,
                        ),
                        child: Text(
                          'الاستمرار كضيف',
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              color: Color(0xff82B81C),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
