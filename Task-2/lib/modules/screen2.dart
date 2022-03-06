import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:menu_button/menu_button.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class Screen2 extends StatefulWidget {
  String name;
  Screen2({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State(name: name);
}

class _Screen2State extends State<Screen2> {
  String name;
  _Screen2State({
    required this.name,
  });
  CalendarFormat format = CalendarFormat.twoWeeks;
  DateTime selectDate = DateTime.now();
  DateTime focusDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String? selectedKey;

    List<String> keys = <String>[
      '2022',
      '2021',
      '2020',
    ];

    Widget normalChildButton = SizedBox(
      width: 100,
      height: 25,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
                child: Text(
              selectedKey ?? 'Last year',
              style: const TextStyle(
                color: Colors.grey,
              ),
            )),
            const SizedBox(
              width: 12,
              height: 17,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HexColor('#1A1A1A'),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.downloading_outlined,
                              color: Colors.white,
                              size: 28,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '4 times a week',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HexColor('#1A1A1A'),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.notifications_paused_sharp,
                              color: Colors.grey,
                              size: 28,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Reminder Off',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: HexColor('#1A1A1A'),
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        lineWidth: 5.0,
                        percent: .66,
                        center: const Text(
                          '6.5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        progressColor: Colors.blue,
                      ),
                      const SizedBox(
                        width: 19,
                      ),
                      Column(
                        children: const [
                          Text(
                            '125',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'times',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 30,
                          width: 2,
                          color: Colors.grey[850],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            '42',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'missed',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 30,
                          width: 2,
                          color: Colors.grey[850],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            '40%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'month',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 30,
                          width: 2,
                          color: Colors.grey[850],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            '62%',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'total',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: HexColor('#1A1A1A'),
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Statistic',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        MenuButton<String>(
                          child: normalChildButton,
                          items: keys,
                          itemBackgroundColor: Colors.white,
                          menuButtonBackgroundColor: Colors.grey[900]!,
                          itemBuilder: (String value) => Container(
                            height: 40,
                            color: Colors.grey[900],
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 16),
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          toggledChild: Container(
                            child: normalChildButton,
                            color: Colors.grey[800],
                          ),
                          onItemSelected: (String value) {
                            setState(() {
                              selectedKey = value;
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LineGraph(
                      features: [
                        Feature(
                          title: "English",
                          color: Colors.blue.withOpacity(0.4),
                          data: [
                            0.2,
                            0.8,
                            1,
                            0.7,
                            0.6,
                            2,
                            1.8,
                            1.9,
                          ],
                        )
                      ],
                      size: const Size.fromHeight(120),
                      graphColor: Colors.grey,
                      showDescription: false,
                      graphOpacity: 0.1,
                      descriptionHeight: 100,
                      labelX: const [
                        '01',
                        '02',
                        '03',
                        '04',
                        '05',
                        '06',
                      ],
                      labelY: const ['20%', '40%', '60%', '80%', '100%'],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: HexColor('#1A1A1A'),
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'History',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Drag to see more',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey[850],
                      ),
                    ),
                    TableCalendar(
                      firstDay: DateTime(1990),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: selectDate,
                      calendarFormat: format,
                      onDaySelected: (DateTime day, DateTime f) {
                        setState(() {
                          selectDate = day;
                          focusDate = f;
                        });
                      },
                      selectedDayPredicate: (DateTime day) {
                        return isSameDay(selectDate, day);
                      },
                      onFormatChanged: (CalendarFormat _format) {
                        setState(() {
                          format = _format;
                        });
                      },
                      calendarStyle: const CalendarStyle(
                        selectedDecoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
