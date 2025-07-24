import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tajawal/Screens/screens.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'الإعلانات',
              style: GoogleFonts.tajawal(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'بحث',
                            hintStyle: GoogleFonts.tajawal(
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: const Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Column(
                    children: List.generate(
                      5,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return ChatScreen();
                          }));
                        },
                        child: ListTile(
                          trailing: Column(
                            children: [
                              Text('5 ساعات'),
                              SizedBox(height: 10),
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.green,
                                size: 10,
                              ),
                            ],
                          ),
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/GIRL1.jpg',
                            ),
                          ),
                          title: Text(
                            'بسمة باسم',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            'أريد أن أرى صور..',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      5,
                          (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return EmptyChatScreen();
                          }));
                        },
                        child: ListTile(
                          trailing: Column(
                            children: [
                              Text('5 ساعات'),
                              SizedBox(height: 10),
                              Icon(
                                Icons.circle_rounded,
                                color: Colors.black,
                                size: 10,
                              ),
                            ],
                          ),
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/2.png',
                            ),
                          ),
                          title: Text(
                            'أسماء باسم',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            'أريد أن أرى صور..',
                            style: GoogleFonts.tajawal(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
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
      ),
    );
  }
}
