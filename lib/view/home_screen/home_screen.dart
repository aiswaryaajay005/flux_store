import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/model/home_screen_models/catergory_model.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List netimages = [
    "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1126993/pexels-photo-1126993.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3281337/pexels-photo-3281337.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset(ImageConstants.menu),
        centerTitle: true,
        title: Text(
          "GemStore",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.notifications_none_outlined), SizedBox(width: 31)],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //categories section
            _buildCategorySection(),
            SizedBox(height: 30),
            //carousel section
            _buildCarouselSection(),
            SizedBox(height: 35),
            //Feature Products
            _buildFeatureMethods(),
            SizedBox(height: 19),
            //collection section
            _buildCollectionSection(),
            SizedBox(height: 38),
            _buildRecommendedProductsS(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Column _buildFeatureMethods() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Feature Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Show all",
                style: TextStyle(
                  fontSize: 13,
                  color: ColorConstants.lightgrey4,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 34, right: 35),
            child: Row(
              children: List.generate(
                10,
                (index) => Column(
                  children: [
                    Container(
                      height: 172,
                      width: 126,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/3769148/pexels-photo-3769148.jpeg?auto=compress&cs=tinysrgb&w=600",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Text("Turtleneck Sweater", style: TextStyle(fontSize: 12)),
                    Text(
                      "\$ 39.99",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container _buildCollectionSection() {
    return Container(
      height: 158,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/545032/pexels-photo-545032.jpeg?auto=compress&cs=tinysrgb&w=600",
          ),
        ),
      ),
    );
  }

  Widget _buildRecommendedProductsS() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Show all",
                style: TextStyle(
                  fontSize: 13,
                  color: ColorConstants.lightgrey4,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 34, right: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                10,
                (index) => Row(
                  children: [
                    Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/3769148/pexels-photo-3769148.jpeg?auto=compress&cs=tinysrgb&w=600",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Column(
                      children: [
                        Text(
                          "Turtleneck Sweater",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "\$ 39.99",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 31),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 168,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,

          scrollDirection: Axis.horizontal,
        ),
        itemCount: 4,
        itemBuilder:
            (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(netimages[itemIndex]),
                    ),
                  ),
                ),
      ),
    );
  }

  Widget _buildCategorySection() {
    final List<CatergoryModel> categories = [
      CatergoryModel(icon: Icons.female, name: "Female"),
      CatergoryModel(icon: Icons.male, name: "Men"),
      CatergoryModel(icon: Icons.audiotrack, name: "Accessories"),
      CatergoryModel(icon: Icons.color_lens, name: "Beauty"),
      // {"icons": Icons.female, "category": "Women"},
      // {"icons": Icons.male,        "category": "Men"              },
      // {"icons": Icons.audiotrack, "category": "Accessories"    },
      // {"icons": Icons.color_lens, "category": "Beauty"          },
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          4,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: Column(
              spacing: 6,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border:
                        selectedCategory == index
                            ? Border.all(color: ColorConstants.brown)
                            : null,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor:
                        selectedCategory == index
                            ? ColorConstants.brown
                            : ColorConstants.lightgrey3,
                    child: Icon(
                      categories[index].icon,
                      color:
                          selectedCategory == index
                              ? ColorConstants.white
                              : ColorConstants.lightgrey2,
                    ),
                  ),
                ),
                Text(
                  categories[index].name,
                  style: TextStyle(
                    color:
                        selectedCategory == index
                            ? ColorConstants.brown
                            : ColorConstants.lightgrey2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
