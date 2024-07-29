import 'package:cars_app/screens/location_search.dart';
import 'package:cars_app/screens/topsheet_content.dart';
import 'package:cars_app/services/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: screensize.width * 0.95,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              size: 35,
                              Icons.location_pin,
                              color: Color(0XFF5A6684),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SearchLocation.id);
                                },
                                child: Text(
                                  'Where?',
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              width: screensize.width * 0.30,
                            ),
                            VerticalDivider(),
                            Image.asset('assets/date_time_flat.png'),
                            SizedBox(
                              width: screensize.width * 0.01,
                            ),
                            TextButton(
                                onPressed: () {
                                  showTopModalSheet(context, TopSheetContent());
                                },
                                child: Text(
                                  '22/11 - 25/11',
                                  style: TextStyle(color: Color(0XFF5A6684)),
                                ))
                          ],
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: screensize.height * 0.06,
              ),
              TabBar(
                controller: _tabController,
                labelColor: Color(0XFF6366F1),
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                tabs: [
                  Tab(
                    icon: SvgIcon(icon: SvgIconData('assets/boat_flat.svg')),
                    text: 'Boats',
                  ),
                  Tab(
                    icon: SvgIcon(icon: SvgIconData('assets/car_flat.svg')),
                    text: 'Cars',
                  ),
                  Tab(
                    icon: SvgIcon(icon: SvgIconData('assets/house_flat.svg')),
                    text: 'Stays',
                  ),
                ],
              ),
              SizedBox(
                height: screensize.height * 0.02,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(child: Text('Boats')),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ReUseable_Card(),
                          SizedBox(
                            height: screensize.height * 0.03,
                          ),
                          ReUseable_Card()
                        ],
                      ),
                    ),
                    Center(child: Text('Stays')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
