import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // --- استخدام نفس لوحة الألوان الموحدة ---
    const Color primaryColor = Color(0xFF0077C0);
    const Color backgroundColor = Color(0xFFFAFAFA);
    const Color darkTextColor = Color(0xFF1D242B);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(
              color: Colors.white), // لضمان لون سهم العودة أبيض
          title: const Text(
            "الملف الشخصي",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            // --- الجزء العلوي للملف الشخصي ---
            Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "اسم المستخدم", // يمكنك تغيير هذا لاحقاً
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: darkTextColor,
                  ),
                ),
                Text(
                  "user@example.com", // يمكنك تغيير هذا لاحقاً
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(), // فاصل بصري
            const SizedBox(height: 10),

            // --- بطاقات المعلومات ---
            _buildInfoCard(
              icon: Icons.email_outlined,
              title: "البريد الإلكتروني",
              subtitle: "user@example.com",
              primaryColor: primaryColor,
            ),
            const SizedBox(height: 15),
            _buildInfoCard(
              icon: Icons.phone_outlined,
              title: "رقم الهاتف",
              subtitle: "+123 456 7890",
              primaryColor: primaryColor,
            ),
            const SizedBox(height: 15),
            _buildInfoCard(
              icon: Icons.location_on_outlined,
              title: "العنوان",
              subtitle: "المدينة، الدولة",
              primaryColor: primaryColor,
            ),
            const SizedBox(height: 30),

            // --- زر تعديل الملف الشخصي ---
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                // To-do: Add edit profile functionality
              },
              icon: const Icon(Icons.edit, color: Colors.white),
              label: const Text(
                "تعديل الملف الشخصي",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- ويدجت مخصص لبطاقات المعلومات لسهولة القراءة ---
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color primaryColor,
  }) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: primaryColor),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
