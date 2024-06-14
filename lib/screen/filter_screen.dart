import 'package:flutter/material.dart';
import 'package:prioritysoft/config/custom_color.dart';
import 'package:prioritysoft/widgets/filter_brand_section.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedBrandsIndex = 0;
  int selectedPriceIndex = 0;
  int selectedSortByIndex = 0;
  int selectedGenderIndex = 0;
  int selectedColorIndex = 0;
  double startValue = 0.0;
  double endValue = 1750.0;

  List<String> brandsList = [
    'Nike',
    'Adidas',
    'Channel',
    'Puma',
  ];
  List<String> sortByList = ['Most recent', 'Lowest price', 'Highest price'];
  List<String> genderList = ['Male', 'Female', 'Others'];
  List colorList = [
    {
      'name': 'Black',
      'color': 0xff101010,
    },
    {
      'name': 'Red',
      'color': 0xff2952CC,
    },
    {
      'name': 'Yellow',
      'color': 0xffFCD240,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Filter',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Brands',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.15,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandsList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedBrandsIndex = index;
                                });
                              },
                              child: FilterBrandSection(
                                index: index,
                                selectedIndex: selectedBrandsIndex,
                                itemList: brandsList,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Price Range',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RangeSlider(
                      divisions: 5,
                      overlayColor:
                          const WidgetStatePropertyAll(CustomColors.primary400),
                      labels: RangeLabels(
                          startValue.toString(), endValue.toString()),
                      values: RangeValues(startValue, endValue),
                      onChanged: (value) {
                        setState(() {
                          startValue = value.start;
                          endValue = value.end;
                        });
                      },
                      min: 0,
                      max: 2000,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sort By',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sortByList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSortByIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    color: selectedSortByIndex == index
                                        ? CustomColors.primary500
                                        : CustomColors.primary0,
                                    border: Border.all(
                                      color: selectedSortByIndex == index
                                          ? CustomColors.primary500
                                          : CustomColors.primary300,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    sortByList[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            color: selectedSortByIndex == index
                                                ? CustomColors.primary0
                                                : CustomColors.primary500,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Gender',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: genderList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedGenderIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    color: selectedGenderIndex == index
                                        ? CustomColors.primary500
                                        : CustomColors.primary0,
                                    border: Border.all(
                                      color: selectedGenderIndex == index
                                          ? CustomColors.primary500
                                          : CustomColors.primary300,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    genderList[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                            color: selectedGenderIndex == index
                                                ? CustomColors.primary0
                                                : CustomColors.primary500,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Color',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colorList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedColorIndex = index;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    color: selectedColorIndex == index
                                        ? CustomColors.primary500
                                        : CustomColors.primary0,
                                    border: Border.all(
                                      color: selectedColorIndex == index
                                          ? CustomColors.primary500
                                          : CustomColors.primary300,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            Color(colorList[index]['color']),
                                      ),
                                      Text(
                                        colorList[index]['name'].toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                                color: selectedColorIndex ==
                                                        index
                                                    ? CustomColors.primary0
                                                    : CustomColors.primary500,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                letterSpacing: 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.32,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Reset'.toUpperCase())),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.32,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(CustomColors.primary500),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Apply'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: CustomColors.primary100,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
