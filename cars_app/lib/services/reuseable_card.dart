import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container ReUseable_Card() {
  return Container(
    width: 384,
    height: 254,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(
                'assets/c1.png',
              ),
            ),
            Positioned(
              top: 15,
              left: 20,
              child: Row(
                children: [
                  Container(
                    width: 88,
                    height: 24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/host_flat.png',
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Top Host',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 225),
                  Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(size: 15, FontAwesomeIcons.heart),
                      ))
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Text(
                'Title card item full name',
                style: TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Color(0XFF6366F1),
            ),
            Text(
              '5.0',
              style: TextStyle(fontSize: 8.71),
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                color: Color(0XFF505050),
              ),
            ),
            Text(
              '10 Trips',
              style: TextStyle(fontSize: 8.71),
            ),
            SizedBox(
              width: 170,
            ),
            Text(
              '\$999/day',
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.location_pin,
              size: 20,
            ),
            Text(
              ' 11.6 mi from current location',
              style: TextStyle(fontSize: 12),
            )
          ],
        )
      ],
    ),
  );
}
