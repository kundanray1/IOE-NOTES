import 'package:book/components/WidthSeperator.dart';
import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';

class EditSelector extends StatelessWidget {
  const EditSelector({super.key, required this.title, required this.selected});
  final String title;
  final String selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade200),
          // color: Colors.blue.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.menu_book_outlined,
                color: tdBlack,
              ),
              const WidthSeperator(),
              Text(title,
                  style:
                      TextStyle(color: tdBlack, fontWeight: FontWeight.w700)),
            ],
          ),
          Row(
            children: [
              Text(
                selected,
                style: TextStyle(
                    color: Colors.grey.shade700, fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.grey.shade700,
              )
            ],
          )
        ],
      ),
    );
  }
}

// EditSelector() {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//     margin: EdgeInsets.only(bottom: 10),
//     decoration: BoxDecoration(
//         color: Colors.blue.shade200, borderRadius: BorderRadius.circular(10)),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Icon(Icons.menu_book_outlined),
//         const Text(title,
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
//         const WidthSeperator(),
//         Text(
//           result,
//           style: TextStyle(
//               color: Colors.grey.shade700, fontWeight: FontWeight.w700),
//         ),
//         Icon(
//           Icons.arrow_right,
//           color: Colors.grey.shade700,
//         )
//       ],
//     ),
//   );
// }
