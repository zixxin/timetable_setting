import 'package:flutter/material.dart';

class Timetable2 extends StatefulWidget {
  @override
  Timetable2State createState() => Timetable2State();
}

class Timetable2State extends State<Timetable2> {
  final formKey = new GlobalKey<FormState>();
  String dropdownvalue1 = '친구 선택';
  String dropdownvalue2 = '친구 선택';
  String dropdownvalue3 = '친구 선택';
  String dropdownvalue4 = '친구 선택';
  var items = ['친구 선택', '송다빈', '윤지인', '백지훈', '조형우', '맹주찬', '이오주'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '아니 이거 왜 안돼',
      home: Scaffold(
        appBar: AppBar(
          title: Text('시간표'),
          centerTitle: true,
          backgroundColor: Color(0xFF3A70AF),
        ),
        body: Builder(builder: (BuildContext context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _friend1(),
                  Container(height: 10.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      value: dropdownvalue1,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue1 = newValue;
                        });
                      },
                    ),
                  ),
                  Container(height: 25.0),
                  _friend2(),
                  Container(height: 10.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      value: dropdownvalue2,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue2 = newValue;
                        });
                      },
                    ),
                  ),
                  Container(height: 25.0),
                  _friend3(),
                  Container(height: 10.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      value: dropdownvalue3,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue3 = newValue;
                        });
                      },
                    ),
                  ),
                  Container(height: 25.0),
                  _friend4(),
                  Container(height: 10.0),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      underline: SizedBox(),
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      value: dropdownvalue4,
                      items: items.map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Text(items));
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownvalue4 = newValue;
                        });
                      },
                    ),
                  ),
                  Container(height: 40.0),
                  _checkButton(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _friend1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 85.0),
        Text(
          '친구 1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _friend2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 85.0),
        Text(
          '친구 2',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _friend3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 85.0),
        Text(
          '친구 3',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _friend4() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 85.0),
        Text(
          '친구 4',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _checkButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 200.0),
        SizedBox(
          width: 80,
          height: 35,
          child: ElevatedButton(
            onPressed: () {
              //기능 추가
            },
            child: Text(
              '취소',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFD7D7D7)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              )),
            ),
          ),
        ),
        Container(width: 10.0),
        SizedBox(
          width: 80,
          height: 35,
          child: ElevatedButton(
            onPressed: () {
              //기능 추가
            },
            child: Text(
              '확인',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF3A70AF)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
