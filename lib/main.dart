import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_assignment/app_bar.dart';
import 'package:food_app_assignment/card.dart';
import 'package:food_app_assignment/headline24.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var recommendedCombo = [
      {
        'imagePath': 'assets/images/food_image_1.png',
        'title': 'Honey lime combo',
        'price': '2,000',
      },
      {
        'imagePath': 'assets/images/food_image_2.png',
        'title': 'Berry mango combo',
        'price': '8,000',
      },
      {
        'imagePath': 'assets/images/food_image_1.png',
        'title': 'Honey lime combo',
        'price': '2,000',
      },
      {
        'imagePath': 'assets/images/food_image_2.png',
        'title': 'Berry mango combo',
        'price': '8,000',
      },
      {
        'imagePath': 'assets/images/food_image_1.png',
        'title': 'Honey lime combo',
        'price': '2,000',
      },
      {
        'imagePath': 'assets/images/food_image_2.png',
        'title': 'Berry mango combo',
        'price': '8,000',
      }
    ];
    var hottestItem = [
      {
        'imagePath': 'assets/images/food_image_1.png',
        'title': 'Quinoa fruit salad',
        'price': '10,000',
      },
      {
        'imagePath': 'assets/images/food_image_2.png',
        'title': 'Tropical fruit salad',
        'price': '10,000',
      },
      {
        'imagePath': 'assets/images/food_image_1.png',
        'title': 'melon fruit salad',
        'price': '10,000',
      },
      {
        'imagePath': 'assets/images/food_image_1.png',
        'title': 'Honey lime combo',
        'price': '2,000',
      },
      {
        'imagePath': 'assets/images/food_image_2.png',
        'title': 'Berry mango combo',
        'price': '8,000',
      }
    ];
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFFFCFCFC),
          scaffoldBackgroundColor: Color(0xFFFCFCFC),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Appbar
                  AppBarView(),
                  // Body
                  const SizedBox(height: 36),
                  SizedBox(
                    width: 300,
                    child: RichText(
                      text: TextSpan(
                        text: 'Hello Kante, ', // First part of text
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          height: 1.5,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                        children: [
                          TextSpan(
                            text: 'What fruit salad combo do you want today?',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 56,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                // horizontal: 24,
                                vertical: 18,
                              ),
                              hintText: 'Search for fruit salad combos',
                              hintStyle: TextStyle(
                                color: Color(0xFF86869E),
                              ),
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.only(left: 24, right: 10),
                                child:
                                    Icon(Icons.search, color: Color(0xFF86869E)),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF3F4F9),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0xFFF3F4F9),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0xFFF3F4F9),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      SvgPicture.asset('assets/icons/filter.svg'),
                    ],
                  ),
                  const SizedBox(height: 38),
                  headline24('Recommended Combo'),
                  const SizedBox(height: 23),
                  SizedBox(
                    height: 183,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: recommendedCombo.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = recommendedCombo[index];
                        return itemCard(
                          item['imagePath']!,
                          item['title']!,
                          item['price']!,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 16.0); // Space between items
                      },
                    ),
                  ),
                  const SizedBox(height: 52),
                  headline24('Hottest'),
                  const SizedBox(height: 18),
                  SizedBox(
                    height: 183,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: hottestItem.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = hottestItem[index];
                        return itemCard(
                          item['imagePath']!,
                          item['title']!,
                          item['price']!,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 16.0); // Space between items
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
