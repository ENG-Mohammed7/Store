// Login Screen


// import 'package:flutter/material.dart';
// import 'package:store/screens/home_screen.dart';
// import 'signup_screen.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl, // لضبط المحاذاة مع اللغة العربية
//       child: Scaffold(
//         backgroundColor: const Color(0xFFFAFAFA), // خلفية التطبيق
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF0077C0), // اللون الأساسي
//           title: const Text(
//             "تسجيل الدخول",
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//           centerTitle: true,
//           elevation: 0,
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(20),
//             child: Card(
//               color: const Color(0xFFC7EEFF), // لون البطاقة (الأزرق الفاتح)
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               elevation: 4,
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Icon(
//                       Icons.store_mall_directory,
//                       size: 80,
//                       color: Color(0xFF0077C0), // الأزرق الأساسي
//                     ),
//                     const SizedBox(height: 20),
//                     const Text(
//                       "أهلاً بك 👋",
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF1D242B), // النص الداكن
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     TextField(
//                       decoration: InputDecoration(
//                         labelText: "البريد الإلكتروني",
//                         prefixIcon:
//                             const Icon(Icons.email, color: Color(0xFF0077C0)),
//                         filled: true,
//                         fillColor: Colors.white, // خلفية الحقل أبيض لت contrast
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "كلمة المرور",
//                         prefixIcon:
//                             const Icon(Icons.lock, color: Color(0xFF0077C0)),
//                         filled: true,
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 24),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               const Color(0xFF0077C0), // زر بلون أساسي
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomeScreen()),
//                           );
//                         },
//                         child: const Text(
//                           "تسجيل الدخول",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SignUpScreen()),
//                         );
//                       },
//                       child: const Text(
//                         "إنشاء حساب جديد",
//                         style: TextStyle(
//                           color: Color(0xFF1D242B), // النصوص بلون غامق
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// ============================================================
// Sign Up Screen


// import 'package:flutter/material.dart';
// import 'package:store/screens/home_screen.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl, // محاذاة للغة العربية
//       child: Scaffold(
//         backgroundColor: Colors.grey[100],
//         appBar: AppBar(
//           backgroundColor: Colors.indigo,
//           title: const Text(
//             "إنشاء حساب جديد",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//           centerTitle: true,
//           elevation: 0,
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(20),
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               elevation: 6,
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Icon(Icons.person_add,
//                         size: 80, color: Colors.indigo),
//                     const SizedBox(height: 20),
//                     const Text(
//                       "مرحباً بك 👋",
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.indigo,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     TextField(
//                       decoration: InputDecoration(
//                         labelText: "الاسم الكامل",
//                         prefixIcon: const Icon(Icons.person),
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       decoration: InputDecoration(
//                         labelText: "البريد الإلكتروني",
//                         prefixIcon: const Icon(Icons.email),
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "كلمة المرور",
//                         prefixIcon: const Icon(Icons.lock),
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "تأكيد كلمة المرور",
//                         prefixIcon: const Icon(Icons.lock_outline),
//                         filled: true,
//                         fillColor: Colors.grey[200],
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 24),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 50,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.indigo,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomeScreen()),
//                           );
//                         },
//                         child: const Text(
//                           "إنشاء حساب",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context); // يرجع لشاشة تسجيل الدخول
//                       },
//                       child: const Text(
//                         "لديك حساب بالفعل؟ تسجيل الدخول",
//                         style: TextStyle(color: Colors.indigo),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// ============================================================

// Home Screen

// import 'package:flutter/material.dart';
// import 'package:store/screens/login_screen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl, // دعم اللغة العربية
//       child: Scaffold(
//         backgroundColor: Colors.grey[100],
//         appBar: AppBar(
//           backgroundColor: Colors.indigo,
//           iconTheme: IconThemeData(color: Colors.white),
//           title: const Text(
//             "الرئيسية",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
//           ),
//           centerTitle: true,
//           elevation: 2,
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.notifications,
//                 color: Colors.white,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.shopping_cart,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(
//                 decoration: const BoxDecoration(color: Colors.indigo),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     CircleAvatar(
//                       radius: 35,
//                       backgroundColor: Colors.white,
//                       child: Icon(Icons.person, size: 40, color: Colors.indigo),
//                     ),
//                     SizedBox(height: 10),
//                     Text("أهلاً بك", style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.home),
//                 title: const Text("الرئيسية"),
//                 onTap: () {},
//               ),
//               ListTile(
//                 leading: const Icon(Icons.person),
//                 title: const Text("الملف الشخصي"),
//                 onTap: () {},
//               ),
//               ListTile(
//                 leading: const Icon(Icons.settings),
//                 title: const Text("الإعدادات"),
//                 onTap: () {},
//               ),
//               ListTile(
//                 leading: const Icon(Icons.logout, color: Colors.red),
//                 title: const Text("تسجيل الخروج",
//                     style: TextStyle(color: Colors.red)),
//                 onTap: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const LoginScreen()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: GridView.count(
//             crossAxisCount: 2,
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16,
//             children: [
//               _buildCard(Icons.store, "المتجر", Colors.indigo),
//               _buildCard(Icons.local_offer, "العروض", Colors.green),
//               _buildCard(Icons.favorite, "المفضلة", Colors.red),
//               _buildCard(Icons.support_agent, "الدعم", Colors.orange),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ويدجت كارد قابل لإعادة الاستخدام
//   Widget _buildCard(IconData icon, String title, Color color) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       elevation: 4,
//       child: InkWell(
//         borderRadius: BorderRadius.circular(20),
//         onTap: () {
//           // هنا تضع منطق الانتقال لاحقاً
//         },
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 50, color: color),
//             const SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: color,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
