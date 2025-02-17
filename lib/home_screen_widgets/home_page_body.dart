import 'dart:async';

import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:rehnuma/constants.dart';
import 'package:rehnuma/controllers/performa_controller.dart';
import 'package:rehnuma/mixins.dart';
import 'package:rehnuma/models/date_model.dart';
import 'package:rehnuma/models/date_with_emotion.dart';
import 'package:rehnuma/navigation%20screens/performa_view.dart';
import 'package:rehnuma/screens/today_performa_screen.dart';

import '../appvariables.dart';
import '../widgets/date_row.dart';

class HomeCard extends StatefulWidget {
  // final height;
  final child;

  // const HomeCard({Key? key, required this.height, required this.child})
  const HomeCard({Key? key, required this.child}) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 7.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      // height: height,
      width: MediaQuery.of(context).size.width,
      child: widget.child,
    );
  }
}

class Card1 extends StatelessWidget {
  final now = DateTime.now();
  HijriCalendar today = HijriCalendar.now();

  String greeting() {
    var timeNow = DateTime.now().hour;
    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon';
    } else if ((timeNow > 16) && (timeNow <= 20)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          greeting(),
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.cloud_queue,
                size: 50.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    DateFormat.yMMMMd().format(now).toString(),
                    style: kCard1TextStyle,
                  ),
                  Text(
                    today.toFormat("MMMM ll dd, yyyy").toString(),
                    style: kCard1TextStyle,
                  ),
                  Text(
                    DateFormat.EEEE().format(now).toString(),
                    style: kCard1TextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Card2 extends StatefulWidget {
  const Card2({Key? key, required this.dates}) : super(key: key);
  final List<DateModel> dates;

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> with GetSnack {
  ScrollController _controller = ScrollController();
  String selectedDate = '';
  Color color = Colors.transparent;
  int selectedIndex = 30;
  late PerformaController performaController;
  bool firstTime = false;
  Completer<PDFViewController> _pdfViewController =
      Completer<PDFViewController>();
  StreamController<String> _pageCountController = StreamController<String>();
  void getPerformas() async {
    dynamic success = await performaController.getAllPerformas();
    if (success != 'success') {
      showSnackBar(title: "Performas", msg: "Couldn't load performas");
    }
  }

  @override
  void initState() {
    performaController = Get.put(PerformaController());
    getPerformas();
    super.initState();
  }

  String getEmotion(String first, List<DateEmotion> second) {
    for (int i = 0; i < second.length; i++) {
      if (first == second[i].date) {
        return second[i].emotion;
      }
    }
    return '';
  }

  

  String getTodayDate() {
    int index = widget.dates.length - 1;
    return '${widget.dates[index].date} ${widget.dates[index].month}';
  }

  Widget getRow(List<DateEmotion> dates) {
    try {
      List<Widget> list = [];
      for (int i = 0; i < widget.dates.length; i++) {
        String emotion = getEmotion(
            '${widget.dates[i].date} ${widget.dates[i].month}', dates);
        list.add(
          DateRow(
            emotion: emotion,
            selectedButton: selectedDate,
            color: color,
            press: () {
              if (emotion == '') {
                showSnackBar(
                    title: "No performa filled",
                    msg: "You haven't added any performa on this day");
              } else {
                setState(() {
                  selectedIndex = i;
                  selectedDate =
                      '${widget.dates[i].date} ${widget.dates[i].month}';
                });
                performaController.getPerforma(
                    '${widget.dates[i].date} ${widget.dates[i].month}');
                Get.to(PerformaView(
                  date: '${widget.dates[i].date} ${widget.dates[i].month}',
                ));
              }
            },
            day: widget.dates[i].day,
            date: widget.dates[i].date,
            month: widget.dates[i].month,
          ),
        );
        list.add(SizedBox(
          width: 10.0,
        ));
      }

      return Row(
        children: list,
      );
    } catch (e) {
      return SizedBox();
    } finally {
      if (_controller.hasClients) {
        if (_controller.position.atEdge) {
          _controller
              .animateTo(_controller.position.maxScrollExtent,
                  duration: Duration(milliseconds: 700), curve: Curves.easeIn)
              .then((value) {});
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (performaController.isLoading.value) {
        return SizedBox(
            width: 100,
            height: 100,
            child: Center(child: CircularProgressIndicator()));
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                if (getEmotion(getTodayDate(), performaController.dates)
                    .isEmpty) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TodayPerformaScreen()));
                } else {
                  showSnackBar(
                    title: "Performa filled",
                    msg: "You have already filled your performa",
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 7.0,
                  // horizontal: 8.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Text(
                  'How are you feeling today?',
                  style: kQuestionDescStyle,
                ),
              ),
            ),
            SingleChildScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              child: getRow(performaController.dates),
            ),
          ],
        );
      }
    });
  }
}

class Card3 extends StatefulWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  List<String> getPaths(String goal) {
    if (goal == 'Live a successful life') {
      return success;
    } else if (goal == 'Become a better Muslim') {
      return beABetterMuslim;
    } else if (goal == 'Improve Relationships') {
      return improveRelationships;
    } else {
      return strongFaith;
    }
  }

  List<Widget> getItems() {
    List<Widget> list = [];
    String goal = AppVariables.box.read("goal");
    List<String> paths = getPaths(goal);
    for (int i = 0; i < paths.length; i++) {
      list.add(
        ImageWid(path: paths[i]),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0)
      // ),
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        items: getItems(),
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: Duration(seconds: 10),
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
    );
  }
}

class ImageWid extends StatelessWidget {
  const ImageWid({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image(
        fit: BoxFit.fill,
        image: AssetImage(path),
      ),
    );
  }
}
