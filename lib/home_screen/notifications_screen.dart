import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'الإشعارات',
            style: GoogleFonts.tajawal(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  // مهم للنص العربي
                                  text: TextSpan(
                                    style: GoogleFonts.tajawal(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'عروض خاصة: ',
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'استمتع بخصم 20% على جميع المنتجات! العرض ساري حتى نهاية الأسبوع.',
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.circle_rounded,
                                    color: Color(0xff82B81C),
                                    size: 8,
                                  ),
                                  SizedBox(height: 15),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      '5 ساعات',
                                      style: GoogleFonts.tajawal(
                                        textStyle: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    5,
                        (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  textDirection: TextDirection.rtl,
                                  // مهم للنص العربي
                                  text: TextSpan(
                                    style: GoogleFonts.tajawal(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'عروض خاصة: ',
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        'استمتع بخصم 20% على جميع المنتجات! العرض ساري حتى نهاية الأسبوع.',
                                        style: GoogleFonts.tajawal(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      '5 ساعات',
                                      style: GoogleFonts.tajawal(
                                        textStyle: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
