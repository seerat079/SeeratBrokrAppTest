import 'package:cars_app/screens/select_date.dart';
import 'package:cars_app/services/reusbale_textfield.dart.dart';
import 'package:flutter/material.dart';

class TopSheetContent extends StatefulWidget {
  const TopSheetContent({super.key});
  static const String id = 'top_sheet';
  @override
  State<TopSheetContent> createState() => _TopSheetContentState();
}

class _TopSheetContentState extends State<TopSheetContent> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Container(
      height: 300,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
              Text(
                'Clear all',
                style: TextStyle(color: Color(0XFF007AFF)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: reusable_textfield(labelText: 'Where?')),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(child: reusable_textfield(labelText: 'Pickup')),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: reusable_textfield(
                labelText: 'Return',
              ))
            ],
          ),
          SizedBox(
            height: screensize.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: screensize.width * 0.92,
                height: 54,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color(0XFF6366F1),
                onPressed: () {
                  Navigator.pushNamed(context, SelectDateandTime.id);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Tue, Nov 06, 10:00 AM - Sat, Nov 10, 10:00 AM (4 days)',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
