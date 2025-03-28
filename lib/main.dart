//!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//? 1-mashq

// import 'package:flutter/material.dart';
// void main() => runApp(const MainApp());

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ListScreen(),
//     );
//   }
// }

// class ListScreen extends StatelessWidget {
//   const ListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Optimized List View')),
//       body: ListView.builder(
//         itemCount: 100000,
//         physics: BouncingScrollPhysics(),
//         itemBuilder: (_, index) => Container(
//           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//           decoration: BoxDecoration(
//             border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
//           ),
//           child: Text(
//             'Item $index',
//             style: TextStyle(fontSize: 16),
//           ),
//         ),
//       ),
//     );
//   }
// }
//!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//? 2-mashq

// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ComputationScreen(),
//     );
//   }
// }

// class ComputationScreen extends StatefulWidget {
//   const ComputationScreen({super.key});

//   @override
//   _ComputationScreenState createState() => _ComputationScreenState();
// }

// class _ComputationScreenState extends State<ComputationScreen> {
//   int result = 0;
//   bool isCalculating = false;

//   void _calculate() async {
//     setState(() {
//       isCalculating = true;
//     });

//     int computedValue = await compute(heavyComputation, 100000000);

//     if (mounted) {
//       setState(() {
//         result = computedValue;
//         isCalculating = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Super Fast Computation')),
//       body: Center(
//         child:
//             isCalculating
//                 ? const CircularProgressIndicator()
//                 : Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Result: $result'),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: isCalculating ? null : _calculate,
//                       child: const Text('Start Computation'),
//                     ),
//                   ],
//                 ),
//       ),
//     );
//   }
// }

// int heavyComputation(int limit) {
//   int sum = 0;
//   for (int i = 0; i < limit; i++) {
//     sum += i;
//   }
//   return sum;
// }

//!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//? 3-mashq


// import 'package:flutter/material.dart';

// class ImageScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Loading')),
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemCount: 100,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: FadeInImage.assetNetwork(
//                 placeholder: 'assets/placeholder.jpg',
//                 image: "https://3.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg",
//                 fit: BoxFit.cover,
//                 fadeInDuration: const Duration(milliseconds: 500), // Sekin paydo bo‘lish effekti
//                 imageErrorBuilder: (context, error, stackTrace) {
//                   return const Icon(Icons.error, color: Colors.red, size: 50);
//                 },
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//!  Ustoz 4-vazifa assetsni imagesda  ichida loyiha_hajmi.jpgda