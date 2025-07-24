import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyChatScreen extends StatelessWidget {
  const EmptyChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ Top Bar
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: ListTile(
                  title: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/2.png'),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'أسيل باسم',
                        style: GoogleFonts.tajawal(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.black),
                ),
              ),

              // ✅ Spacer
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              // ✅ Image
              Center(child: Image.asset('assets/images/3.png')),
              SizedBox(height: MediaQuery.of(context).size.height / 3.5),
              Container(color: Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'اكتب رسالة',
                          hintStyle: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.link, size: 28),
                    Icon(Icons.photo, size: 28),
                    SizedBox(width: 8),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
