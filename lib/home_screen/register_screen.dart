import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tajawal/Screens/screens.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controllerOfEmail = TextEditingController();
  bool _obscureText = true;
  TextEditingController controllerOfPassword = TextEditingController();
  bool isRememberMeChecked = false;
  bool _obscureTextNewPass = true;
  bool _obscureTextPassConfirm = true;
  TextEditingController controllerOfCode = TextEditingController();
  TextEditingController controllerOfPasswordConfirmation =
      TextEditingController();
  TextEditingController controllerOfNewPassword = TextEditingController();

  void showSimpleInfoDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(10),
          title: Text('Product Info'),
          children: [
            Text('Basic Informations'),
            SizedBox(height: 10),
            Text('Learn more', style: TextStyle(fontSize: 11)),
          ],
        );
      },
    );
  }

  void showCompulsoryDialogForPasswordReconver(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.all(20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.close, color: Colors.grey.shade700),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'نسيت كلمة المرور',
                  style: GoogleFonts.tajawal(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff82B81C),
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'أدخل البريد الالكتروني الخاص بك وسنقوم بإرسال رمز التحقق لإعادة تعيين كلمة المرور الخاصة بك',
                style: GoogleFonts.tajawal(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controllerOfEmail,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'البريد الإلكتروني',
                  hintStyle: GoogleFonts.tajawal(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff82B81C),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    showCompulsoryDialogForSendingEmail(context);
                  },
                  child: Text(
                    'إرسال',
                    style: GoogleFonts.tajawal(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showPasswordUpdatedDialog(BuildContext context) {
    Navigator.pop(context);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.close, color: Colors.grey.shade700),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Icon(
                  Icons.check,
                  color: Color(0xff82B81C), // اللون الأخضر اللي بالصورة
                  size: 60,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'تم تحديث كلمة المرور',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    color: Color(0xff82B81C),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 7),
              Text(
                'لقد تم تحديث كلمة المرور الخاصة بك',
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 13,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff82B81C),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'تسجيل دخول',
                    style: GoogleFonts.tajawal(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void showCompulsoryDialogForSendingEmail(BuildContext context) {
    Navigator.pop(context);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              contentPadding: const EdgeInsets.all(20),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close, color: Colors.grey.shade700),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      'تعيين كلمة المرور',
                      style: GoogleFonts.tajawal(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff82B81C),
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'قم بإدخال كلمة المرور الجديدة ومن ثم قم بتأكيدها مرة أخرى',
                    style: GoogleFonts.tajawal(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: controllerOfCode,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'أدخل الرمز المرسل',
                      hintStyle: GoogleFonts.tajawal(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: controllerOfNewPassword,
                    obscureText: _obscureTextNewPass,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'كلمة المرور الجديدة',
                      hintStyle: GoogleFonts.tajawal(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(
                          _obscureTextNewPass
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey.shade600,
                        ),
                        onPressed: () {
                          setStateDialog(() {
                            _obscureTextNewPass = !_obscureTextNewPass;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: controllerOfPasswordConfirmation,
                    obscureText: _obscureTextPassConfirm,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'تأكيد كلمة المرور',
                      hintStyle: GoogleFonts.tajawal(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(
                          _obscureTextPassConfirm
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey.shade600,
                        ),
                        onPressed: () {
                          setStateDialog(() {
                            _obscureTextPassConfirm = !_obscureTextPassConfirm;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff82B81C),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        showPasswordUpdatedDialog(context);
                      },
                      child: Text(
                        'تأكيد',
                        style: GoogleFonts.tajawal(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void showFullScreenDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog.fullscreen(
          backgroundColor: Colors.yellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'this is exaple of full',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'تسجيل دخول',
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                      color: Color(0xff82B81C),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 20),
                TextField(
                  cursorColor: Color(0xff82B81C),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  controller: controllerOfEmail,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.07),
                    border: InputBorder.none,
                    label: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'البريد الالكتروني / رقم الجوال',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controllerOfPassword,
                  obscureText: _obscureText,
                  cursorColor: Color(0xff82B81C),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.07),
                    border: InputBorder.none,
                    label: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'كلمة المرور',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey.shade600,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          showCompulsoryDialogForPasswordReconver(context);
                        },
                        child: Text(
                          'نسيت كلمة المرور؟',
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),

                      SizedBox(width: screenWidth * 0.38),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          children: [
                            Text(
                              'تذكرني',
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.tajawal(
                                textStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Checkbox(
                              value: isRememberMeChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  isRememberMeChecked = newValue!;
                                });
                              },
                              activeColor: Color(0xff82B81C),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
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
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      top: 8,
                      right: screenWidth * 0.3,
                      left: screenWidth * 0.3,
                    ),
                    child: Text(
                      'متابعة',
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
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      top: 8,
                      right: screenWidth * 0.13,
                      left: screenWidth * 0.13,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          Text(
                            'Google ',
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
                            'الاستمرار بجوجل',
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
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      top: 8,
                      right: screenWidth * 0.07,
                      left: screenWidth * 0.07,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          Text(
                            'Facebook ',
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
                            'الاستمرار بالفيسبوك',
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
                SizedBox(height: 10),
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
                          return CreateAccount();
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
        ),
      ),
    );
  }
}
