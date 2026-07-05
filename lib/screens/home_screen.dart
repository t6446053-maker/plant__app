import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plt/core/colors.dart';
import 'package:plt/core/icons.dart';
import 'package:plt/core/images.dart';
import 'package:plt/routes/app_routes.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            const SizedBox(height: 10),
            _title("Plants"),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.filter);
              },
              child: _plantsGrid()),
      _seeMoreButton(context),
            const SizedBox(height: 20),
            _title("Equipments"),
            const SizedBox(height: 10),
            _equipmentsGrid(),
      _seeMoreButton(context),
            const SizedBox(height: 20),
            _title("Planta Care Kit (new)"),
            const SizedBox(height: 20),
            _careKitCard(),
            const SizedBox(height: 30), // مساحة إضافية في نهاية الصفحة سكرول
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      height: 360,
      color: AppColors.GreyN2,
      child: Stack(
        children: [
          Positioned(
            right: -10, // ترحيل الصورة لليمين كما في التصميم
            bottom: 0,
            child: Image.asset(
              AppImages.homePageStackImage,
              height: 240,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Text(
                        "Planta - shining your\nlittle space",
                        style: TextStyle(
                          fontSize: 30, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // زرار السلة الدائري المكتشف في image_92c1da.png
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Text(
                      "See New Arrivals",
                      style: TextStyle(
                        color: Colors.green, 
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset(AppIcons.arrowRightIcon, color: Colors.green , width: 30,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // TITLE
  Widget _title(String text) {
    return Padding(
      
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _plantsGrid() {
    final plants = [
      {"name": "Spider Plant", "category": "Indoor", "price": "250\$", "image": AppImages.plantOne},
      {"name": "Song of India", "category": "Outdoor", "price": "350\$", "image": AppImages.plantSeven},
      {"name": "Grey Star Calarthea", "category": "Outdoor", "price": "300\$", "image": AppImages.cupOne}, // عدل الصور حسب الموديل الصحيح عندك
      {"name": "Banana Plant", "category": "Indoor", "price": "200\$", "image": AppImages.plantSeven},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: plants.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7, // لضبط الطول المناسب للكارت
          crossAxisSpacing: 20,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return _card(plants[index]);
        },
      ),
    );
  }

  // 3. EQUIPMENTS GRID
  Widget _equipmentsGrid() {
    final items = [
      {"name": "Grey Star Calarthea", "category": "Outdoor", "price": "400\$", "image": AppImages.cupOne},
      {"name": "Banana Plant", "category": "Indoor", "price": "200\$", "image": AppImages.cupOne},
      {"name": "White Planta Pots", "category": "Outdoor", "price": "250\$", "image": AppImages.cupOne},
      {"name": "Lemon Pots", "category": "Indoors", "price": "350\$", "image": AppImages.largeBottle},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return _card(items[index]);
        },
      ),
    );
  }

  Widget _card(Map item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. الكونتينر الرمادي محيط بالصورة فقط
        Expanded(
          child: Container(
            width: double.infinity, // يملأ العرض المتاح له في الجريد
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5), // الخلفية الرمادية الفاتحة للصورة فقط
              borderRadius: BorderRadius.circular(20), // الحواف الدائرية للخلفية الرمادية
            ),
            padding: const EdgeInsets.all(2), // مسافة داخلية حول الصورة
            child: Center(
              child: Image.asset(
                item["image"], 
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        
        // 2. النصوص بالخارج (تلقائياً هتكون على خلفية الصفحة البيضاء)
        const SizedBox(height: 8),
        Text(
          item["name"], 
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black), 
       
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        Text(
          item["category"], 
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        const SizedBox(height: 4),
        Text(
          item["price"], 
          style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }

  // زرار See More
 Widget _seeMoreButton(BuildContext context) { // ضفنا الـ context هنا
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.only(right: 24, top: 8, bottom: 8),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.equipments);
        },
        child: const Text(
          "See More",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black, 
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline, 
          ),
        ),
      ),
    ),
  );
}

  // 5. PLANTA CARE KIT CARD (القسم الأفقي الأخير في image_92c1fa.png)
  Widget _careKitCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Lemon Balm Grow Kit",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 6),
                Text(
                  "Include: Lemon Balm seeds, dung, Planta pot, marker...",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15, height: 1.4),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                
                AppImages.plantOne,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}