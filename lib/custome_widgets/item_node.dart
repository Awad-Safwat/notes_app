import 'package:flutter/material.dart';

class ItemNode extends StatelessWidget {
  const ItemNode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFDCB78),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Fluttre tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                  )),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Build your Career with tharwat samy',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.transparent.withOpacity(0.5),
                    fontFamily: 'assets/fonts/Poppins',
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 32,
              ),
            ),
            Text(
              'May 21,2023',
              style: TextStyle(
                color: Colors.transparent.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
