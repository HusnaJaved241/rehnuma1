import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants.dart';
import '../home_screen_widgets/home_page_body.dart';
import '../home_screen_widgets/search_bar.dart';
import '../models/date_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();
  FocusNode focusNode = FocusNode();
  List<DateModel> dates = [];
  final _dateFormatter = DateFormat('d');
  final _monthFormatter = DateFormat('MMM');
  void getDates() {
    for (int i = 0; i < 30; i++) {
      final date = DateTime.now().add(Duration(days: -i));
      final day = DateFormat('EEEE').format(date);
      dates.add(DateModel(
          date: _dateFormatter.format(date),
          month: _monthFormatter.format(date),
          day: day));
    }
  }

  @override
  void initState() {
    getDates();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu, // add custom icons also
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.all(4.0),
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImage2),
              fit: BoxFit.cover
            ),
          ),
          height: double.infinity,
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: HomeCard(
                          // height: 115.0,
                          child: Card1(),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: HomeCard(
                          // height: 160.0,
                          child: Card2(dates: dates.reversed.toList()),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: HomeCard(
                          // height: 185.0,
                          child: Card3(),
                        ),
                      ),
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
