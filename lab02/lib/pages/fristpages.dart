import 'package:flutter/material.dart';

class Fristpages extends StatelessWidget {
  const Fristpages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Ameeru"),
        backgroundColor: Colors.blue, // เพิ่มสีหัวข้อให้สวยงาม
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView( // ช่วยให้เลื่อนหน้าจอได้ถ้ามือถือจอเล็ก
        child: Padding(
          padding: const EdgeInsets.all(20.0), // เว้นขอบรอบๆ หน้าจอ
          child: Column(
            children: [
              
              const SizedBox(height: 20), // เว้นระยะด้านบนนิดนึง

              // --- ส่วนรูปภาพ ---
              const CircleAvatar(
                backgroundImage: AssetImage("assets/itsyou.jpg"),
                radius: 90, // ขนาดรูป
              ),

              const SizedBox(height: 30), // เว้นระยะห่างระหว่าง รูป กับ การ์ดข้อมูล

              // --- ส่วน Card ข้อมูล (รวมทุกอย่างในใบเดียว) ---
              Card(
                elevation: 10, // ความสูงของเงา (ยิ่งเยอะยิงลอย)
                shadowColor: Colors.black45, // สีเงา
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // มุมโค้งของการ์ด
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0), // เว้นระยะภายในการ์ด
                  child: Column(
                    children: [
                      
                      // 1. ชื่อ
                      Row(
                        children: [
                          Icon(Icons.person, size: 28, color: Colors.blue),
                          SizedBox(width: 15),
                          Expanded(child: Text("Ameeru Doloh 662021062", style: TextStyle(fontSize: 16))),
                        ],
                      ),
                      const Divider(height: 25, color: Colors.grey), // เส้นคั่น

                      // 2. วันเกิด
                      Row(
                        children: [
                          Icon(Icons.cake, size: 28, color: Colors.blue),
                          SizedBox(width: 15),
                          Text("15 December 2004", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const Divider(height: 25, color: Colors.grey), // เส้นคั่น

                      // 3. เบอร์โทร
                      Row(
                        children: [
                          Icon(Icons.phone, size: 28, color: Colors.blue),
                          SizedBox(width: 15),
                          Text("0631517431", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      const Divider(height: 25, color: Colors.grey), // เส้นคั่น

                      // 4. อีเมล
                      Row(
                        children: [
                          Icon(Icons.email, size: 28, color: Colors.blue),
                          SizedBox(width: 15),
                          Expanded(child: Text("662021062@tsu.ac.th", style: TextStyle(fontSize: 16))),
                        ],
                      ),
                      const Divider(height: 25, color: Colors.grey), // เส้นคั่น

                      // 5. สาขา
                      Row(
                        children: [
                          Icon(Icons.school, size: 28, color: Colors.blue),
                          SizedBox(width: 15),
                          Expanded(child: Text("Information Technology", style: TextStyle(fontSize: 16))),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              // --- จบส่วน Card ---

              const SizedBox(height: 20), // เว้นระยะด้านล่าง
            ],
          ),
        ),
      ),
    );
  }
}