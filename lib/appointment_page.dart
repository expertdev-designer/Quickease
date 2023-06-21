import 'package:flutter/material.dart';
import 'package:quikies/sign_up.dart';
import 'package:quikies/my_address.dart';
import 'package:quikies/package.dart';
import 'package:quikies/widgets/app_buttons.dart';

class AppointmentPage extends StatelessWidget {
  final List<String> textFieldText = [
    ' 1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    ' 8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',

    ' 22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30 '

        ,

    // Add more text values for each TextField
  ];
  final List<String> textFieldTexts = [
    ' 08:00 AM',
    '09:00 AM',
    '10:30 AM',
    '12:00 PM',
    '01:30 PM',
    '03:00 PM',
    '04:30 PM',
    '06:00 PM',
    '07:30 PM',
    '08:30 AM',
    '09:30 AM',
    '11:00 AM',
    '12:30 PM',
    '02:00 PM',
    '03:30 PM',
    '05:00 PM',
    '06:30 PM',
    '08:00 PM',
    '09:00 AM',
    '10:00 AM',
    '01:00 AM',
    '02:30 PM',
    '04:00 PM',
    '05:30 PM',
    '07:00 PM',
    // Add more text values for each TextField
  ];
  final List<String> textScroll = [
    '07:30 PM',
    '08:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 3.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff277FC1),
                    size: 35,
                  ),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: const Text(
                "Appointment Date",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 20, 0),
                  child: Text(
                    "Select Date",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: Color(0xff999999),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "Sep",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      color: Color(0xff999999),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < textFieldText.length; i++)
                      Container(
                        margin: EdgeInsets.only(left: 13),
                        width: 36,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: _getTextFieldBorderColor(i),
                                width: 2.0,
                              ),
                            ),
                            labelText: textFieldText[i],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(height: 20),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Container(height: 15),
            Container(
              margin: EdgeInsets.only(left: 13),
              child: const Text(
                "Select Time",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Color(0xff999999),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < 8; i++)
                    Row(
                      children: [
                        for (int j = 0; j < 3; j++)
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(4.0),
                              width: 100,
                              height: 40,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(13),
                                    borderSide: BorderSide(
                                      color: _getTextFieldBorderColor(i),
                                      width: 2.0,
                                    ),
                                  ),
                                  labelText: textFieldTexts[i * 3 + j],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  Row(
                    children: [
                      for (int j = 0; j < 2; j++)
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(3.0),
                            width: 100,
                            height: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13),
                                  borderSide: BorderSide(
                                    color: _getTextFieldBorderColor(8),
                                    width: 2.0,
                                  ),
                                ),
                                labelText: textScroll[j],
                              ),
                            ),
                          ),
                        ),

                      Expanded(
                        child: SizedBox(),
                      ),

                    ],

                  ),
                  SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 8,),
                  Container(

                    margin: EdgeInsets.only(left:180),

                 child: AppButtons(textColor: Colors.white, backgroundColor: Color(0xff277FC1), borderColor: Colors.black12, text: "Next", width: 45,height:50 , onTap: () {

                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => PackagePage()),
                   );      // Handle button tap event here

                 },),

                  ), /*
                  Align(
                    alignment: Alignment.bottomRight,

                    child: Padding(

                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),



                     /*
                      child: SizedBox(
                        width: 160.0,
                        height: 45.0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.blue,
                            border: Border.all(
                              color: Color(0xff277FC1),
                              width: 2.0,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PackagePage()),
                              );
                            },
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      */
                    ),
                  ),
                  */
                  //add Button
                ],

              ),
            ),

          ],
        ),
      ),

    );
  }

  Color _getTextFieldBorderColor(int index) {
    List<List<int>> coloredFields = [
      [1, 1],
      [1, 2],
      [1, 3],
      [2, 1],
      [2, 3],
      [3, 2],
      [4, 1],
      [4, 3],
      [5, 2],
      [5, 3],
      [6, 2],
      [7, 1],
      [7, 3],
      [8, 3],
      [9, 1],
      [9, 2]
    ];

    int row = (index / 3).floor() + 1;
    int column = (index % 3) + 1;

    if (coloredFields.contains([row, column])) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Theme(
        data: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
          ),
        ),
        child: AppointmentPage(),
      ),
    ),
  );
}
