// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:accordion/accordion.dart';

// AccordionPage: StatelessWidget Class
class AccordionPage extends StatelessWidget {
  // Static: Class Properties
  static String title = "Accordion Page";
  static String routeName = "/accordion";

  // Build: Class Method
  @override
  Widget build(BuildContext context) {
    // Returning Widgets
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Accordion(
          maxOpenSections: 2,
          leftIcon: Icon(
            Icons.audiotrack,
            color: Colors.white,
          ),
          children: [
            AccordionSection(
              isOpen: true,
              header: Text(
                "Introduction",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Text("This is the introduction right here..."),
            ),
            AccordionSection(
              isOpen: true,
              header: Text(
                "About Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airline_seat_flat,
                size: 120,
                color: Colors.blue[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
            AccordionSection(
              isOpen: true,
              flipRightIconIfOpen: true,
              header: Text(
                "Company Info",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              content: Icon(
                Icons.airplay,
                size: 70,
                color: Colors.green[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
