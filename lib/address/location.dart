import 'package:flutter/material.dart';
import 'package:quikies/address/add_address.dart';
import 'package:quikies/login/login_page.dart';
import 'package:quikies/main.dart';
import 'package:quikies/address/my_address.dart';

class LocationPage1 extends StatefulWidget {
  @override
  _LocationPage1State createState() => _LocationPage1State();
}

class _LocationPage1State extends State<LocationPage1> {

  bool _showOthersTextField = false; // Track the visibility of the text field
  TextEditingController _othersController = TextEditingController();

  @override
  void dispose() {
    _othersController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 44, 16, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    ); // Handle arrow button tap
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Icon(Icons.arrow_back, size: 32, color: Colors.blue),
                  ),
                ),
              ),
              Container(height: 15),
              const Text(
                "Add Location page",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Land Mark',
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Geolocation',
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Save as',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    color: Color(0xff999999)),
              ),
              const SizedBox(height: 0.0),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildRectangularBox(
                      Color(0xff277FC1),
                      Icons.other_houses,
                      'Home',
                    ), // First box
                    _buildRectangularBox(
                      Colors.black12,
                      Icons.work,
                      'Work',
                    ), // Second box
                    _buildRectangularBox(
                      Colors.black12,
                      Icons.location_on_outlined,
                      'Others',
                    ), // Third box
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Visibility(
                visible: _showOthersTextField,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),

              /////////
              //
              ///
              /// //add of new TextFielld
              SizedBox(height: 190),
              Container(
                height: 1,
                color: Colors.grey,
              ),

              const SizedBox(height: 25.0),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 150.0, // Set desired width for the button
                  height: 60.0, // Set desired height for the button
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xff277FC1),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddAddress()),
                        );
                        // Add signup logic here
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRectangularBox(Color color, IconData icon, String text) {
    bool isSelected = false;
    return GestureDetector(

      onTap: () {
        if (text == 'Others') {
          setState(() {
            isSelected = !isSelected;
            _showOthersTextField = !_showOthersTextField; // Toggle visibility
            if (!_showOthersTextField) {
              isSelected = !isSelected;
              _othersController.clear(); // Clear the text field
            }
          });
        }
      },
      child: Container(
        height: 40,
        width: 101.0,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : color,
          borderRadius: BorderRadius.circular(17.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffF1F1F1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 22.0,
              color: Colors.black38,
            ),
           const SizedBox(width: 9.0),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xff2A2D37),
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
