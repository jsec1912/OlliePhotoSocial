import 'package:flutter/material.dart';
import 'package:ollie_photo_social/components/bottom_next.dart';
import 'package:ollie_photo_social/constants.dart';
import 'package:ollie_photo_social/components/polling_back_icon.dart';
import 'package:ollie_photo_social/pages/share.dart';

class PollingMultiPage extends StatefulWidget {
  PollingMultiPage({Key key}) : super(key: key);

  @override
  _PollingMultiPageState createState() => _PollingMultiPageState();
}

class _PollingMultiPageState extends State<PollingMultiPage> {
  String dropdownValue = '1 hour';

  void nextAction() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SharePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Image(
              image: AssetImage('assets/images/layout/new_polling_topbar.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                PollingBackIcon(
                  title: 'Add New Polling',
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(appPadding),
                    margin: EdgeInsets.only(top: appPadding),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title', style: TextStyle(color: white)),
                              SizedBox(height: appPadding / 4),
                              TextField(
                                textAlign: TextAlign.left,
                                decoration: new InputDecoration(
                                    hintText: 'Write your question here',
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8),
                                      ),
                                      borderSide: new BorderSide(
                                        color: primaryColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    fillColor: white,
                                    filled: true),
                              ),
                              SizedBox(height: appPadding),
                              Text('Option 1', style: TextStyle(color: white)),
                              SizedBox(height: appPadding / 4),
                              TextField(
                                textAlign: TextAlign.left,
                                decoration: new InputDecoration(
                                    hintText: 'Answer question 1',
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8),
                                      ),
                                      borderSide: new BorderSide(
                                        color: primaryColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    fillColor: white,
                                    filled: true),
                              ),
                              SizedBox(height: appPadding * 2 / 3),
                              Text('Option 2', style: TextStyle(color: white)),
                              SizedBox(height: appPadding / 4),
                              TextField(
                                textAlign: TextAlign.left,
                                decoration: new InputDecoration(
                                    hintText: 'Answer question 2',
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8),
                                      ),
                                      borderSide: new BorderSide(
                                        color: primaryColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    fillColor: white,
                                    filled: true),
                              ),
                              SizedBox(height: appPadding * 2 / 3),
                              Text('+ Add Option',
                                  style: TextStyle(color: Colors.yellow)),
                              SizedBox(height: appPadding),
                              Text('Polling Duration',
                                  style: TextStyle(color: white)),
                              SizedBox(height: appPadding / 2),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: appPadding / 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: primaryColor),
                                  color: white,
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: dropdownValue,
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 24,
                                    elevation: 0,
                                    style: TextStyle(color: Colors.deepPurple),
                                    underline: null,
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>[
                                      '1 hour',
                                      '3 hours',
                                      'a day',
                                      'a week',
                                      'a month'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,
                                            style: TextStyle(
                                                fontSize: 14, color: black)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text('Step 1 of 2', style: TextStyle(color: white)),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          BottomNextIcon(
            nextAction: nextAction,
          )
        ],
      ),
    );
  }
}