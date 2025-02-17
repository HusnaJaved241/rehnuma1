import 'package:flutter/material.dart';
import 'package:listview_utils/listview_utils.dart';
import 'package:rehnuma/home_screen_widgets/search_bar.dart';
import 'package:rehnuma/models/qassas.dart';
import 'package:rehnuma/screens/home_screen.dart';
import 'package:rehnuma/screens/more_screen.dart';

import '../constants.dart';
import 'dua_screen.dart';
import 'new_story.dart';

class QassasScreen extends StatefulWidget {
  @override
  State<QassasScreen> createState() => _QassasScreenState();
}

class _QassasScreenState extends State<QassasScreen> {
  FocusNode focusNode = FocusNode();

  List qassas = qassasList;
  List searchedNames = [];
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      searchedNames = qassas;
    });
    super.initState();
  }

  searchString(String query) {
    if (query.isEmpty) {
      return;
    } else {
      setState(() {
        searchedNames = qassas.where((element) {
          final name = element.name.toLowerCase();
          final input = query.toLowerCase();
          return name.contains(input);
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            SearchBar(
              focusNode: focusNode,
              searchString: searchString,
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 27.0,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MoreScreen(),
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bgImage),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                height: MediaQuery.of(context).size.height,
                child: CustomListView(
                  header: Container(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: SelectableText(
                      'Qassas-ul-Anbiya',
                      style: kQuestionTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // shrinkWrap: true,
                  pageSize: 20,
                  padding: const EdgeInsets.only(bottom: 12.0),
                  itemBuilder: (context, index, dynamic item) {
                    return CustomTileQassas(
                      text: searchedNames[index].name,
                      index: index,
                    );
                  },
                  itemCount: searchedNames.length,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTileQassas extends StatelessWidget {
  const CustomTileQassas({Key? key, required this.text, required this.index})
      : super(key: key);
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => newStory(
                      index: index,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          color: appColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: kNormalBoldWhiteTextStyle,
          ),
        ),
        height: 55.0,
        margin: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 5.0,
        ),
      ),
    );
  }
}
