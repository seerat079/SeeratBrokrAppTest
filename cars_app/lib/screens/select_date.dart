import 'package:cars_app/services/constant.dart';
import 'package:cars_app/services/time_selectcontainer.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateandTime extends StatefulWidget {
  const SelectDateandTime({super.key});
  static const String id = 'select_date';

  @override
  State<SelectDateandTime> createState() => _SelectDateandTimeState();
}

class _SelectDateandTimeState extends State<SelectDateandTime> {
  late CalendarFormat _calendarFormat = CalendarFormat.month;
  late DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: screenSize.width,
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
                        'Select Date',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              _selectedDay = null;
                            });
                          },
                          child: Text(
                            'Clear',
                            style: TextStyle(
                                color: Color(0XFF007AFF), fontSize: 15),
                          ))
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Select pickup date',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(_selectedDay != null
                            ? 'Selected Date: ${_selectedDay.toString().substring(0, 10)}'
                            : 'Prices don’t include taxes and fees'),
                      ],
                    ),
                  ),
                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: _focusedDay,
                    calendarFormat: _calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    onPageChanged: (focusedDay) {
                      _focusedDay = focusedDay;
                    },
                  ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  Row(
                    children: [TimeSelectContainer(screenSize: screenSize)],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
