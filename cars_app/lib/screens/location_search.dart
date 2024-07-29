import 'package:cars_app/services/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});
  static const String id = 'search_location';

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: screensize.width,
            decoration: Constant_BoxDecoration(),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close)),
                    Spacer(),
                    Text(
                      'Where?',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screensize.width * 0.45,
                    )
                  ],
                ),
                Divider(),
                SizedBox(
                  height: screensize.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText:
                                'City, zip code, address, airport or hotel...',
                            prefixIcon: Icon(Icons.location_on_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: SvgIconData('assets/Rectangle.svg'),
                        size: 14,
                      ),
                      Text('  Current Location')
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: SvgIconData('assets/recent_flat.svg'),
                        size: 16,
                      ),
                      Text('  Los Angeles, CA')
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      SvgIcon(
                        icon: SvgIconData('assets/recent_flat.svg'),
                        size: 16,
                      ),
                      Text('  San Francisco, CA')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
