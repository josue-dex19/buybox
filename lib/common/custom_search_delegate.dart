import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<String> searchList = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Fig",
    "Grapes",
    "Kiwi",
    "Lemon",
    "Mango",
    "Orange",
    "Papaya",
    "Raspberry",
    "Strawberry",
    "Tomato",
    "Watermelon",
  ];
  final List<String> recentSearch = [
    "Oignons",
    "Champignons",
    "Pomme fraîche",
    "Oignons",
    "Champignons",
    "Pomme fraîche",
    "Oignons",
    "Champignons",
    "Pomme fraîche",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(); // Laisser vide car buildResults est géré dans buildSuggestions
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestionList = query.isEmpty
        ? recentSearch.take(4).toList()
        : searchList
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recherche récente",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Tout effacer",
                  style: TextStyle(color: Colors.yellow),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            itemCount: suggestionList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: FaIcon(FontAwesomeIcons.clockRotateLeft),
                trailing: FaIcon(FontAwesomeIcons.circleXmark),
                title: Text(suggestionList[index]),
                onTap: () {
                  query = suggestionList[index];
                },
              );
            },
          ),
        ),
        Divider(
          height: 20,
          thickness: 5,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: suggestionList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                childAspectRatio: 0.7,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/Recherchechoix'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
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
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
