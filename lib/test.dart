// import 'package:flutter/material.dart';
//
// class first extends StatefulWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//   String msg = "Game is Running";
//   List l=["",1,2,3,4,5,6,7,8];
//   bool isactive=false;
//   @override
//   void initState() {
//     l.shuffle();
//     print(l);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Number Puzzle"),
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(child:  box(0),),
//               Expanded(child:  box(1),),
//               Expanded(child:  box(2),),
//             ],
//           ),
//           Row(
//             children: [
//               Expanded(child:  box(3),),
//               Expanded(child:  box(4),),
//               Expanded(child:  box(5),),
//             ],
//           ),
//           Row(
//             children: [
//               Expanded(child:  box(6),),
//               Expanded(child:  box(7),),
//               Expanded(child:  box(8),),
//             ],
//           ),
//           Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.deepPurple,
//                   child: Center(
//                     child: Text(
//                       "${msg}",
//                       style: TextStyle(fontSize: 30),
//                     ),
//                   ),
//                 ),
//               )),
//           Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: InkWell(
//                   onTap: () {
//                     setState(() {
//                       l.shuffle();
//                     });
//                   },
//                   child: Container(
//                     width: double.infinity,
//                     color: Colors.deepPurple,
//                     child: Center(
//                       child: Text(
//                         "Reset",
//                         style: TextStyle(fontSize: 40),
//                       ),
//                     ),
//                   ),
//                 ),
//               )),
//         ],
//       ),
//     );
//   }
//   box(int i){
//     int previousItem=i-1;
//     int nextItem=i+1;
//     int previousRow=i-3;
//     int nextRow=i+3;
//     int empty =l.lastIndexOf('');
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Expanded(
//         child: InkWell(
//           onTap: () {
//             if(empty==previousItem){
//               l[previousItem]=l[i];
//               l[i]='';
//             }
//             else if(empty==nextItem){
//               l[nextItem]=l[i];
//               l[i]='';
//             }
//             else if(empty==previousRow){
//               l[previousRow]=l[i];
//               l[i]='';
//             }
//             else if(empty==nextRow){
//               l[nextRow]=l[i];
//               l[i]='';
//             }
//             print(l[i]);
//             if(l[i]==1 && l[i]==2 && l[i]==3 && l[i]==4 && l[i]==5 && l[i]==6 && l[i]==7 && l[i]==8 && l[i]==""){
//               print("kdpfhsefsdofhsdifhosidfkdpfhsefsdofhsdifhosidfkdpfhsefsdofhsdifhosidfkdpfhsefsdofhsdifhosidfkdpfhsefsdofhsdifhosidfkdpfhsefsdofhsdifhosidf");
//               msg="your win";
//             }
//
//
//
//
//             setState(() {});
//           },
//           child: Container(
//             color: Colors.redAccent,
//             child: Center(child: Text("${l[i]}",style: TextStyle(fontSize: 40),)),
//             height: 100,
//           ),
//         ),
//       ),
//     );
//   }
//
//
// }
