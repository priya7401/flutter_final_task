import 'package:final_task/global_widgets/custom_elevated_button.dart';
import 'package:final_task/views/bee_work/match_profile/sam_profile.dart';

import 'package:flutter/material.dart';

List<String> list = [
  'Open to All',
  'American',
  'Afghan',
  'Albanian',
  'Algerian',
  'Bahamian',
  'Bahraini',
  'Bangladeshi',
  'Barbadian',
  'Danish',
  'Djiboutian',
  'Dominican'
];

List<bool> checkVals = List.generate(list.length, (index) => false);

void SearchFilters(context, dim) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (_) => StatefulBuilder(
            builder: (context, state) => DraggableScrollableSheet(
                initialChildSize: 0.75,
                minChildSize: 0.75,
                expand: false,
                builder: (_, controller) => Padding(
                      padding: EdgeInsets.all(dim.width / 14),
                      child: Column(
                        children: [
                          //search input
                          Theme(
                            data: ThemeData(primarySwatch: Colors.grey),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Search Nationality',
                                  prefixIcon: Icon(Icons.search)),
                            ),
                          ),

                          //list
                          Expanded(
                            child: ListView.builder(
                                controller: controller,
                                itemCount: list.length,
                                itemBuilder: (_, index) {
                                  return CheckboxListTile(
                                    value: checkVals[index],
                                    onChanged: (val) => state(() {
                                      checkVals[index] = val!;
                                    }),
                                    title: Text(list[index]),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  );
                                }),
                          ),

                          //apply filters button
                          Container(
                            width: dim.width / 1.2,
                            padding: EdgeInsets.only(
                                top: dim.width / 12, bottom: dim.height / 30),
                            child: ElevatedButton(
                              onPressed: () => SearchFilter2(context, dim),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(46, 103, 249, 1)),
                              child: Padding(
                                padding: EdgeInsets.all(dim.width / 30),
                                child: Text(
                                  'Apply Filters',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          ));
}

List<String> locationsList = ["UK", "UAE", "Uruguay", "Ukraine"];

double sliderVal = 0;
int dist = sliderVal.round();

void SearchFilter2(context, Size dim) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (_) => StatefulBuilder(
            builder: (context, state) => DraggableScrollableSheet(
                initialChildSize: 0.75,
                minChildSize: 0.75,
                expand: false,
                builder: (_, controller) => Padding(
                      padding: EdgeInsets.all(dim.width / 24),
                      child: Column(
                        children: [
                          //title - 'Filters'
                          Padding(
                            padding: EdgeInsets.only(
                                top: dim.height / 25, bottom: dim.height / 30),
                            child: Text(
                              'Filters',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: blue),
                            ),
                          ),

                          //1st card - 'Slider card'
                          Material(
                            elevation: 2.5,
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            child: Padding(
                              padding: EdgeInsets.all(dim.width / 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Search Country',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),

                                  //dropdown box
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: DropdownButtonFormField<String>(
                                      hint: Text(
                                        'London, United Kingdom',
                                        style: TextStyle(color: blue),
                                      ),
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 12,
                                      ),
                                      elevation: 16,
                                      onChanged: (String? newValue) {},
                                      items: locationsList
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onTap: () {},
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.my_location,
                                              color: blue)),
                                    ),
                                  ),

                                  //distance indicator
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: dim.height / 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Search Radius',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          '$dist km',
                                          style: TextStyle(
                                              color: blue, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //slider
                                  Slider(
                                    onChanged: (value) {
                                      state(() {
                                        sliderVal = value;
                                        dist = sliderVal.round();
                                      });
                                    },
                                    value: sliderVal,
                                    max: 100,
                                    divisions: 5,
                                    thumbColor: blue,
                                    activeColor: blue,
                                    inactiveColor: Colors.grey.shade400,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: dim.height / 28),
                            child: Material(
                              elevation: 2.5,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(dim.width / 20, 0,
                                    dim.width / 20, dim.width / 18),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: dim.height / 60),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Search by other filters?',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: dim.height / 120,
                                              ),
                                              Text(
                                                'Industry, looking for, profession and more!',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                          Image.asset(
                                            'assets/images/black_logo.png',
                                            scale: 40,
                                          )
                                        ],
                                      ),
                                    ),
                                    elevatedButton('Join VIBee', Scaffold(),
                                        dim, false, blue, context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
          ));
}
