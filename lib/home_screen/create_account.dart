import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tajawal/Screens/screens.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController controllerOfName = TextEditingController();

  TextEditingController controllerOfEmail = TextEditingController();

  TextEditingController controllerOfNewPassword = TextEditingController();
  TextEditingController controllerOfPasswordConfirmation =
      TextEditingController();
  TextEditingController controllerOfPhone = TextEditingController();
  TextEditingController controllerOfCompanyAddress = TextEditingController();
  TextEditingController controllerOfTaxNumber = TextEditingController();

  bool _obscureTextNewPass = true;
  bool _obscureTextPassConfirm = true;
  bool isRememberMeChecked = false;

  String? selectedAccountType;
  String selectedCountryCode = '+970';

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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

                // الاسم
                _buildTextField(controllerOfName, 'الاسم كاملا'),

                const SizedBox(height: 10),

                // البريد
                _buildTextField(controllerOfEmail, 'البريد الالكتروني'),

                const SizedBox(height: 10),

                // كلمة المرور
                _buildPasswordField(
                  controllerOfNewPassword,
                  'كلمة المرور الجديدة',
                  _obscureTextNewPass,
                  () {
                    setState(() {
                      _obscureTextNewPass = !_obscureTextNewPass;
                    });
                  },
                ),

                const SizedBox(height: 10),

                // تأكيد كلمة المرور
                _buildPasswordField(
                  controllerOfPasswordConfirmation,
                  'تأكيد كلمة المرور',
                  _obscureTextPassConfirm,
                  () {
                    setState(() {
                      _obscureTextPassConfirm = !_obscureTextPassConfirm;
                    });
                  },
                ),

                const SizedBox(height: 10),

                // رقم الهاتف + كود الدولة
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextField(
                        controller: controllerOfPhone,
                        keyboardType: TextInputType.phone,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: '598 789 458',
                          hintStyle: GoogleFonts.tajawal(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    DropdownButton<String>(
                      value: selectedCountryCode,
                      items:
                          ['+972', '+970', '+962'].map((code) {
                            return DropdownMenuItem(
                              value: code,
                              child: Text(code),
                            );
                          }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCountryCode = value!;
                        });
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // نوع الحساب
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(12),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    value: selectedAccountType,
                    hint: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'اختر نوع الحساب',
                        style: GoogleFonts.tajawal(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    underline: Container(color: Colors.white),
                    items:
                        ['شخصي', 'شركة'].map((type) {
                          return DropdownMenuItem(
                            value: type,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                type,
                                style: GoogleFonts.tajawal(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedAccountType = value;
                      });
                    },
                  ),
                ),

                const SizedBox(height: 10),

                if (selectedAccountType == 'شخصي')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  textTheme: GoogleFonts.tajawalTextTheme(
                                    Theme.of(context).textTheme,
                                  ).copyWith(
                                    headlineMedium: GoogleFonts.tajawal(
                                      fontSize: 12, // header
                                    ),
                                    titleLarge: GoogleFonts.tajawal(
                                      fontSize: 12, // month/year picker
                                    ),
                                    bodyMedium: GoogleFonts.tajawal(
                                      fontSize: 10, // day numbers
                                    ),
                                  ),
                                  dialogTheme: const DialogTheme(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  colorScheme: const ColorScheme.light(
                                    primary: Color(0xff82B81C),
                                    onPrimary: Colors.white,
                                    onSurface: Colors.black,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                          );
                          if (date != null) {
                            setState(() {
                              selectedDate = date;
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            selectedDate == null
                                ? 'تاريخ الميلاد'
                                : '${selectedDate!.toLocal()}'.split(' ')[0],
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.tajawal(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                if (selectedAccountType == 'شركة')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  textTheme: GoogleFonts.tajawalTextTheme(
                                    Theme.of(context).textTheme,
                                  ).copyWith(
                                    headlineMedium: GoogleFonts.tajawal(
                                      fontSize: 12, // header
                                    ),
                                    titleLarge: GoogleFonts.tajawal(
                                      fontSize: 12, // month/year picker
                                    ),
                                    bodyMedium: GoogleFonts.tajawal(
                                      fontSize: 10, // day numbers
                                    ),
                                  ),
                                  dialogTheme: const DialogTheme(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                  colorScheme: const ColorScheme.light(
                                    primary: Color(0xff82B81C),
                                    onPrimary: Colors.white,
                                    onSurface: Colors.black,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                          );
                          if (date != null) {
                            setState(() {
                              selectedDate = date;
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            selectedDate == null
                                ? 'تاريخ الميلاد'
                                : '${selectedDate!.toLocal()}'.split(' ')[0],
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.tajawal(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildTextField(
                        controllerOfCompanyAddress,
                        'عنوان الشركة',
                      ),
                      const SizedBox(height: 10),
                      _buildTextField(controllerOfTaxNumber, 'الرقم الضريبي'),
                    ],
                  ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'موافق على الشروط والخصوصية',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.tajawal(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                    Checkbox(
                      value: isRememberMeChecked,
                      onChanged: (value) {
                        setState(() {
                          isRememberMeChecked = value!;
                        });
                      },
                      activeColor: const Color(0xff82B81C),
                    ),
                  ],
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
                          return OTPCodeScreen(
                            email: controllerOfEmail.text.trim(),
                          );
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
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: GoogleFonts.tajawal(
          color: Colors.grey.shade600,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildPasswordField(
    TextEditingController controller,
    String hint,
    bool obscure,
    VoidCallback toggle,
  ) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: GoogleFonts.tajawal(
          color: Colors.grey.shade600,
          fontSize: 14,
        ),
        prefixIcon: IconButton(
          icon: Icon(
            obscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey.shade600,
          ),
          onPressed: toggle,
        ),
      ),
    );
  }
}
