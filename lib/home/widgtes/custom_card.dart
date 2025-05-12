import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;

  const CustomCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DropdownButton<String>(
                value: 'Pending Approval',
                items: ['Pending Approval'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (_) {},
                dropdownColor: Colors.black,
                style: TextStyle(color: Colors.white),
              ),
              Text("Item title", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 14,),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 14, color: Colors.white),
                  SizedBox(width: 4),
                  Text("5 Nights (Jan 16 - Jan 20, 2024)", style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 36.0,
                          child: CircleAvatar(radius: 14, backgroundImage: AssetImage('assets/images/back2.png')),
                        ),
                        Positioned(
                          left: 24.0,
                          child: CircleAvatar(radius: 14, backgroundImage: AssetImage('assets/images/back2.png')),
                        ),
                        CircleAvatar(radius: 14, backgroundImage: AssetImage('assets/images/back2.png')),
                        Positioned(
                          left: 72.0,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.black87,
                            child: Text('+6', style: TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("4 unfinished tasks", style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
