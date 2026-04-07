// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MainApp(),
//   ); // Run the MainApp widget as the root of the application
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key}); // Constructor for the MainApp widget

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Create a MaterialApp widget
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment:
//                 MainAxisAlignment.center, // Center the column vertically
//             children: [
//               const Text(
//                 // Display a text widget with the given text
//                 'Welcome to Flutter!',
//                 style: TextStyle(fontSize: 24),
//               ),
//               const SizedBox(height: 16),
//               Image.asset(
//                 // Display an image from the assets folder
//                 'assets/images/flutter_logo.png',
//                 width: 200, // Set the width, height of the image
//                 height: 200,
//               ),
//               const SizedBox(height: 16),
//               Container(
//                 // Create a container widget
//                 width: 200,
//                 height: 50,
//                 color: Colors.blue, // Set the background color of the container
//                 child: const Center(
//                   child: Text(
//                     // Display a text widget
//                     'Start',
//                     style: TextStyle(color: Colors.white), // Set the text color
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//Lab2-Part1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: Scaffold(body: LayoutApp()));
//   }
// }

// class LayoutApp extends StatelessWidget {
//   const LayoutApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text('I\'m in a Coloum and Centered. The below is a row.'),
//         const SizedBox(height: 20),

//         // Task 3: Bọc Row bằng widget Padding
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Row(
//             // Task 1: Sửa thành MainAxisAlignment.center
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Task 4: Viết thủ công từng Container thay vì dùng vòng lặp for
//               Container(width: 100, height: 100, color: Colors.red),
//               // Thêm một chút khoảng cách giữa các khối vì chúng đang bị dính chặt vào nhau do dùng center ở Task 1
//               const SizedBox(width: 10),
//               Container(width: 100, height: 100, color: Colors.green),
//               const SizedBox(width: 10),
//               Container(width: 100, height: 100, color: Colors.blue),
//             ],
//           ),
//         ),

//         const SizedBox(height: 20),
//         Stack(
//           // Task 2: Sửa thành Alignment.topLeft
//           alignment: Alignment.topLeft,
//           children: [
//             Container(width: 300, height: 200, color: Colors.yellow),
//             // Thêm padding cho Text để chữ không bị dính quá sát vào lề viền của hộp vàng
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 'Stacked on Yellow Box',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//Lab2-Part2
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: ResponsiveHomePage());
//   }
// }

// class ResponsiveHomePage extends StatelessWidget {
//   const ResponsiveHomePage({super.key});

//   // Định nghĩa các mã màu từ tài liệu
//   static const colorBody = Color(0xFFF8E287);
//   static const colorNavigation = Color(0xFFC5ECCE);
//   static const colorPane = Color(0xFFEEE2BC);

//   static const _style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

//   static const bodyWidget = Center(child: Text('Body', style: _style));
//   static const navigationWidget = Center(
//     child: Text('Navigation', style: _style),
//   );
//   static const panesWidget = Center(child: Text('Pane', style: _style));

//   @override
//   Widget build(BuildContext context) {
//     // Sử dụng MediaQuery để lấy chiều rộng hiện tại của màn hình
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       appBar: AppBar(
//         title: () {
//           // Thay đổi Text của AppBar dựa theo chiều rộng
//           if (screenWidth < 600) {
//             return const Text('Responsive UI - Phone');
//           } else if (screenWidth < 840) {
//             return const Text('Responsive UI - Tablet');
//           } else if (screenWidth < 1200) {
//             return const Text('Responsive UI - Landscape');
//           } else {
//             return const Text('Responsive UI - Large Desktop');
//           }
//         }(),
//       ),
//       body: () {
//         // Thay đổi cấu trúc Layout của Body dựa theo chiều rộng
//         if (screenWidth < 600) {
//           return buildCompactScreen();
//         } else if (screenWidth < 840) {
//           return buildMediumScreen();
//         } else if (screenWidth < 1200) {
//           return buildExpandedScreen();
//         } else {
//           return buildLargeScreen();
//         }
//       }(),
//     );
//   }

//   // --- Các hàm build giao diện cho từng kích thước màn hình ---

//   Widget buildCompactScreen() {
//     return Column(
//       children: [
//         Expanded(
//           child: Container(color: colorBody, child: bodyWidget),
//         ),
//         Container(height: 80, color: colorNavigation, child: navigationWidget),
//       ],
//     );
//   }

//   Widget buildMediumScreen() {
//     return Row(
//       children: [
//         Container(width: 80, color: colorNavigation, child: navigationWidget),
//         Expanded(
//           child: Container(color: colorBody, child: bodyWidget),
//         ),
//       ],
//     );
//   }

//   Widget buildExpandedScreen() {
//     return Row(
//       children: [
//         Container(width: 80, color: colorNavigation, child: navigationWidget),
//         Container(width: 360, color: colorBody, child: bodyWidget),
//         Expanded(
//           child: Container(color: colorPane, child: panesWidget),
//         ),
//       ],
//     );
//   }

//   Widget buildLargeScreen() {
//     return Row(
//       children: [
//         Container(color: colorNavigation, width: 360, child: navigationWidget),
//         Container(width: 360, color: colorBody, child: bodyWidget),
//         Expanded(
//           child: Container(color: colorPane, child: panesWidget),
//         ),
//       ],
//     );
//   }
// }
// Lab2-Part3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Khai báo màn hình khởi chạy đầu tiên là '/'
//       initialRoute: '/',
//       // Định nghĩa các tuyến đường (routes)
//       routes: {
//         '/': (context) => const HomeScreen(),
//         '/second': (context) => const SecondScreen(),
//       },
//     );
//   }
// }

// // --- Màn hình 1 (Home Screen) ---
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Chuyển sang màn hình 2 bằng tên route '/second'
//             Navigator.pushNamed(context, '/second');
//           },
//           child: const Text('Go to Second Screen'),
//         ),
//       ),
//     );
//   }
// }

// // --- Màn hình 2 (Second Screen) ---
// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Second Screen')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Trở về màn hình trước đó
//             Navigator.pop(context);
//           },
//           child: const Text('Go Back'),
//         ),
//       ),
//     );
//   }
// }
// Lab2-Part4
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RegisterPage()); // MaterialApp
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Khởi tạo Controllers để lấy dữ liệu người dùng nhập vào
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Application')),
      // Sử dụng SingleChildScrollView để tránh lỗi tràn màn hình (overflow) khi bàn phím ảo hiện lên
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            // Đã thay thế Image.asset bằng Icon mặc định để tránh lỗi thiếu file ảnh
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'First Name',
              controller: firstNameController,
            ),
            CustomTextField(label: 'Last Name', controller: lastNameController),
            const CustomTextField(label: 'Email', suffixText: '@gmail.com'),
            const CustomTextField(
              prefixText: '+91 ',
              label: 'Phone Number',
              keyboardType: TextInputType.phone,
              maxLength: 10,
            ),
            const Divider(indent: 8, endIndent: 8),
            const CustomTextField(label: 'Username'),
            const CustomTextField(label: 'Password', obscureText: true),
            const CustomTextField(label: 'Confirm Password', obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Nối First Name và Last Name lại với nhau
                String fullName =
                    "${firstNameController.text} ${lastNameController.text}";

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Registration Successful"),
                    content: Text("Welcome, $fullName"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Register'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// --- CLASS NÀY ĐƯỢC VIẾT THÊM ĐỂ APP KHÔNG BỊ LỖI ---
// Nó chính là bản thiết kế cho cái "CustomTextField" được gọi ở trên
class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? suffixText;
  final String? prefixText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.label,
    this.controller,
    this.suffixText,
    this.prefixText,
    this.keyboardType,
    this.maxLength,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLength: maxLength,

        // obscureText dùng để ẩn mật khẩu thành các dấu chấm tròn
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          suffixText: suffixText,
          prefixText: prefixText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
