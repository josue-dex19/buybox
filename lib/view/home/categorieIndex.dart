import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/custom_search_delegate.dart';

class Categorieindex extends StatelessWidget {
  const Categorieindex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
           Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(onPressed: ()async{
              await showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            }, icon: FaIcon(FontAwesomeIcons.magnifyingGlass)),
          )
        ],
        title: const Text(
          'Categories (56)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 2,
                height: 150.0,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.amber,
                      ),
                      child: Center(
                        child: Text(
                          'text $i',
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const Divider(
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.5,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Image.asset(
                                "assets/image/onBoarding.jpg",
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                                top: 2,
                                left: 2,
                                child: FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Tomatos',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            const Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$4.45',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Text('(243)',
                                          style: TextStyle(fontSize: 12)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.star,
                                        size: 12,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 20,
                              child: ElevatedButton(
                                  style: const ButtonStyle(
                                      padding:
                                          WidgetStatePropertyAll<EdgeInsets>(
                                              EdgeInsets.all(2))),
                                  onPressed: () {},
                                  child: const Text(
                                    'Add to Cart',
                                    style: TextStyle(fontSize: 10),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
