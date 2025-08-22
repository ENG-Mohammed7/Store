import 'package:flutter/material.dart';
import 'package:store/screens/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // --- تعريف الألوان المستخرجة من شاشة تسجيل الدخول لسهولة الاستخدام ---
    const Color primaryColor = Color(0xFF0077C0); // اللون الأساسي
    const Color cardColor = Color(0xFFC7EEFF); // لون البطاقة
    const Color backgroundColor = Color(0xFFFAFAFA); // لون الخلفية
    const Color darkTextColor = Color(0xFF1D242B); // لون النص الداكن
    const Color textFieldFillColor = Colors.white; // لون خلفية حقول الإدخال

    return Directionality(
      textDirection: TextDirection.rtl, // محاذاة للغة العربية
      child: Scaffold(
        backgroundColor: backgroundColor, // تطبيق لون الخلفية
        appBar: AppBar(
          backgroundColor: primaryColor, // تطبيق اللون الأساسي
          automaticallyImplyLeading: false,
          title: const Text(
            "إنشاء حساب جديد",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Card(
              color: cardColor, // تطبيق لون البطاقة
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4, // نفس قيمة الظل
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.person_add,
                        size: 80, color: primaryColor), // تطبيق اللون الأساسي
                    const SizedBox(height: 20),
                    const Text(
                      "مرحباً بك 👋",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: darkTextColor, // تطبيق لون النص الداكن
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "الاسم الكامل",
                        prefixIcon: const Icon(Icons.person,
                            color:
                                primaryColor), // تطبيق اللون الأساسي للأيقونة
                        filled: true,
                        fillColor: textFieldFillColor, // تطبيق لون خلفية الحقل
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "البريد الإلكتروني",
                        prefixIcon:
                            const Icon(Icons.email, color: primaryColor),
                        filled: true,
                        fillColor: textFieldFillColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "كلمة المرور",
                        prefixIcon: const Icon(Icons.lock, color: primaryColor),
                        filled: true,
                        fillColor: textFieldFillColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    // const SizedBox(height: 16),
                    // TextField(
                    //   obscureText: true,
                    //   decoration: InputDecoration(
                    //     labelText: "تأكيد كلمة المرور",
                    //     prefixIcon:
                    //         const Icon(Icons.lock_outline, color: primaryColor),
                    //     filled: true,
                    //     fillColor: textFieldFillColor,
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(12),
                    //       borderSide: BorderSide.none,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              primaryColor, // تطبيق اللون الأساسي للزر
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        },
                        child: const Text(
                          "إنشاء حساب",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // يرجع لشاشة تسجيل الدخول
                      },
                      child: const Text(
                        "لديك حساب بالفعل؟ تسجيل الدخول",
                        style: TextStyle(
                          color: darkTextColor, // تطبيق لون النص الداكن
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
