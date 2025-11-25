import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 2,
                    color: Colors.black12,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Title',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'This is a simple card with a button positioned over it.',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
