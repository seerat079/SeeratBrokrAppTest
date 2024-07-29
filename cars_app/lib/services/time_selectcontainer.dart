import 'package:cars_app/services/constant.dart';
import 'package:cars_app/services/reusbale_textfield.dart.dart';
import 'package:flutter/material.dart';

class TimeSelectContainer extends StatelessWidget {
  const TimeSelectContainer({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constant_BoxDecoration(),
      height: screenSize.height * 0.30,
      width: screenSize.width,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Select times',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Row(
              children: [
                Expanded(child: reusable_textfield(labelText: 'Start')),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: reusable_textfield(labelText: 'End'))
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Divider(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color(0XFF6366F1),
                  minWidth: screenSize.width * 0.90,
                  height: 50,
                  onPressed: () {},
                  child: Text(
                    'Apply',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
