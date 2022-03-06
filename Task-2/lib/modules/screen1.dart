import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_2/modules/screen2.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int n = 0;
  int hour = 0;
  int minute = 0;
  bool isOpend = true;
  bool useSwitch = false;
  DateTime selectedDay = DateTime.now();
  DateTime selectedDay2 = DateTime.now();
  DateTime selectedDay3 = DateTime.now();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Habits',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: HexColor('#1A1A1A'),
        child: const DrawerHeader(
          child: Center(child: Text('Mohammed Ashraf')),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Screen2(name: 'Mediation')));
            },
            child: Card(
              color: HexColor('#1A1A1A'),
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Mediation',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          'EveryDay',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    WeeklyDatePicker(
                      changeDay: (value) {
                        setState(() {
                          selectedDay = value;
                        });
                      },
                      selectedDay: selectedDay,
                      backgroundColor: HexColor('#1A1A1A'),
                      enableWeeknumberText: false,
                      digitsColor: Colors.grey,
                      weekdayTextColor: Colors.grey,
                      selectedBackgroundColor: Colors.pink.withOpacity(.4),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Screen2(name: 'English')));
            },
            child: Card(
              color: HexColor('#1A1A1A'),
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'English',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          '4 times week',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    WeeklyDatePicker(
                      changeDay: (value) {
                        setState(() {
                          selectedDay2 = value;
                        });
                      },
                      selectedDay: selectedDay2,
                      backgroundColor: HexColor('#1A1A1A'),
                      enableWeeknumberText: false,
                      digitsColor: Colors.grey,
                      weekdayTextColor: Colors.grey,
                      selectedBackgroundColor: Colors.blue.withOpacity(.4),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Screen2(name: 'Yoga')));
            },
            child: Card(
              color: HexColor('#1A1A1A'),
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Yoga',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Spacer(),
                        Text(
                          '2 times a week',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    WeeklyDatePicker(
                      changeDay: (value) {
                        setState(() {
                          selectedDay3 = value;
                        });
                      },
                      selectedDay: selectedDay3,
                      backgroundColor: HexColor('#1A1A1A'),
                      enableWeeknumberText: false,
                      digitsColor: Colors.grey,
                      weekdayTextColor: Colors.grey,
                      selectedBackgroundColor: Colors.green.withOpacity(.4),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          MaterialButton(
            onPressed: () {
              scaffoldKey.currentState!.showBottomSheet(
                (context) => Expanded(
                  child: Container(
                    color: HexColor('#1A1A1A'),
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2,
                            ),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  'New Habit',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 25),
                            child: TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.only(),
                                  borderSide:
                                      BorderSide(color: Colors.grey[800]!),
                                ),
                                hintText: 'title',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              // controller: phoneController,
                              cursorColor: Colors.grey,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Title Must Not Be Null';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              onTap: () {},
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.purple,
                                    child: Icon(
                                      Icons.check_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.deepOrange,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey[850],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Frequency',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Times a week',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      --n;
                                    });
                                  },
                                  minWidth: 38,
                                  height: 40,
                                  color: Colors.grey[800],
                                  child: const Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '$n',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      ++n;
                                    });
                                  },
                                  minWidth: 38,
                                  height: 40,
                                  color: Colors.grey[800],
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey[850],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Reminder',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      'Just Notification',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Switch(
                                  value: useSwitch,
                                  onChanged: (bool value) {
                                    setState(() {
                                      useSwitch = value;
                                    });
                                  },
                                  activeTrackColor: Colors.white,
                                  activeColor: Colors.green,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      hour = value!.hourOfPeriod;
                                      minute = value.minute;
                                    });
                                  },
                                  height: 50,
                                  color: Colors.grey[800],
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.watch_later_outlined,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '$hour:$minute',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    height: 50,
                                    child: TextFormField(
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[800],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              const BorderRadius.only(),
                                          borderSide: BorderSide(
                                              color: Colors.grey[800]!),
                                        ),
                                        hintText: 'Reminder Text',
                                        hintStyle: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      cursorColor: Colors.grey,
                                      validator: (String? value) {
                                        if (value!.isEmpty) {
                                          return 'Text Must Not Be Null';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey[850],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 22,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'New habit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
