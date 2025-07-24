import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tajawal/Screens/screens.dart';

class OTPCodeScreen extends StatelessWidget {
  const OTPCodeScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    TextEditingController controllerOfEmail = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'تسجيل جديد',
              style: GoogleFonts.tajawal(
                color: const Color(0xff82B81C),
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'أدخل رمز التحقق',
                style: GoogleFonts.tajawal(
                  color: const Color(0xff82B81C),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'المرسل على الإيميل: $email',
                style: GoogleFonts.tajawal(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 20),
            PinCodeTextField(
              appContext: context,
              length: 6,
              // عدد المربعات
              keyboardType: TextInputType.number,
              animationType: AnimationType.scale,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldWidth: screenWidth / 7,
                // Example: screen width divided by 8
                fieldHeight: screenHeight / 12,
                activeColor: Colors.grey,
                // لون الإطار عندما يكون مفعل
                selectedColor: Colors.grey,
                // لون الإطار عند التحديد
                inactiveColor: Colors.white,
                // لون الإطار الافتراضي
                activeFillColor: Colors.grey[300]!,
                // تعبئة مفعلة
                selectedFillColor: Colors.grey[300]!,
                // تعبئة مختارة
                inactiveFillColor: Colors.grey[200]!, // تعبئة غير مفعلة
              ),
              enableActiveFill: true,
              onChanged: (value) {
                // كل مرة المستخدم يكتب رقم
                print('Current value: $value');
              },
              onCompleted: (value) {
                // هنا ينفذ لما المستخدم يدخل كل الأرقام
                print('Completed: $value');
              },
            ),
            InkWell(
              onTap: () {},
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'إعادة إرسال',
                  style: GoogleFonts.tajawal(
                    color: Color(0xff82B81C),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 15),
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
                      return OTPCodeScreen(
                        email: controllerOfEmail.text.trim(),
                      );
                    },
                  ),
                );
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                    top: 8,
                    right: screenWidth * 0.32,
                    left: screenWidth * 0.32,
                  ),
                  child: Text(
                    'تحقق',
                    style: GoogleFonts.tajawal(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 30,
                child: Center(
                  child: Text(
                    'OR',
                    style: GoogleFonts.tajawal(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
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
                  right: screenWidth * 0.08,
                  left: screenWidth * 0.12,
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ' سجل الان',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            color: Color(0xff82B81C),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      Text(
                        'ليس لديك حساب؟',
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }
}
