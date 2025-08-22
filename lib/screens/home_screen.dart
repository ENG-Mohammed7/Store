import 'package:flutter/material.dart';
import 'package:store/screens/login_screen.dart';
import 'package:store/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // --- نفس لوحة الألوان المستخدمة في كل التطبيق ---
    const Color primaryColor = Color(0xFF0077C0);
    const Color cardColor = Color(0xFFC7EEFF);
    const Color backgroundColor = Color(0xFFFAFAFA);
    const Color darkTextColor = Color(0xFF1D242B);

    return Directionality(
      textDirection: TextDirection.rtl, // دعم اللغة العربية
      child: Scaffold(
        backgroundColor: backgroundColor, // تطبيق لون الخلفية
        appBar: AppBar(
          backgroundColor: primaryColor, // تطبيق اللون الأساسي
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "الرئيسية",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0, // تم جعل الظل 0 ليتناسق مع التصميم السابق
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                    color: primaryColor), // تطبيق اللون الأساسي
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person,
                          size: 40, color: primaryColor), // تطبيق اللون الأساسي
                    ),
                    SizedBox(height: 10),
                    Text("أهلاً بك", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: darkTextColor),
                title: const Text("الرئيسية",
                    style: TextStyle(color: darkTextColor)),
                 onTap: () {
                  // هذا السطر يقوم بإغلاق القائمة الجانبية والعودة للشاشة الحالية
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person, color: darkTextColor),
                title: const Text("الملف الشخصي",
                    style: TextStyle(color: darkTextColor)),
                 onTap: () {
                  // أولاً، أغلق القائمة الجانبية
                  Navigator.pop(context);
                  // ثانياً، انتقل إلى شاشة الملف الشخصي
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: darkTextColor),
                title: const Text("الإعدادات",
                    style: TextStyle(color: darkTextColor)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout,
                    color: Colors.red), // الإبقاء على اللون الأحمر للتنبيه
                title: const Text("تسجيل الخروج",
                    style: TextStyle(color: Colors.red)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              // تم تعديل استدعاء الويدجت ليتناسب مع التصميم الموحد
              _buildCard(Icons.store, "المتجر", primaryColor, cardColor),
              _buildCard(Icons.local_offer, "العروض", primaryColor, cardColor),
              _buildCard(Icons.favorite, "المفضلة", primaryColor, cardColor),
              _buildCard(Icons.support_agent, "الدعم", primaryColor, cardColor),
            ],
          ),
        ),
      ),
    );
  }

  // تم تعديل الويدجت ليأخذ ألوان من الثيم الموحد
  Widget _buildCard(
      IconData icon, String title, Color contentColor, Color backgroundColor) {
    return Card(
      color: backgroundColor, // تطبيق لون خلفية البطاقة
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 4,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          // هنا تضع منطق الانتقال لاحقاً
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                size: 50, color: contentColor), // تطبيق لون المحتوى (الأيقونة)
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: contentColor, // تطبيق لون المحتوى (النص)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
