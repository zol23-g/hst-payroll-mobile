import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onIndexChanged;

  CustomBottomNavBar({required this.selectedIndex, required this.onIndexChanged});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIndicator(0),
          SizedBox(width: 10), // Adjust the gap as needed
          _buildIndicator(1),
          SizedBox(width: 10), // Adjust the gap as needed
          _buildIndicator(2),
          // Add more indicators as needed
        ],
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return InkWell(
      onTap: () {
        widget.onIndexChanged(index);
      },
      child: Container(
        width: 10, // Adjust the width as needed
        height: 10, // Adjust the height as needed
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.selectedIndex == index ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
