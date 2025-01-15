import 'package:flutter/material.dart';
import 'package:islamiapp/Models/recent_data.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/quran/quran_details_view.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/horizontal_surah_view.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/vertical_surah_view.dart';
import 'package:islamiapp/features/layout/widgets/upperLogo.dart';

class quranTab extends StatelessWidget {
  quranTab({super.key});

  List<recentData> recentdatalist = [
    recentData(SurahNameEN: "AL-Anbiya", SurahNameAR: "الانبياء", verses: "122 Verses"),
    recentData(SurahNameEN: " Al-Fatiha", SurahNameAR: "الفاتحه", verses: "7 Verses"),
    recentData(SurahNameEN: "Al-Baqarah", SurahNameAR: "البقرة", verses: "286 Verses"),
    recentData(SurahNameEN: "Aal-E-Imran", SurahNameAR: "آل عمران", verses: "200 Verses"),
    recentData(SurahNameEN: "An-Nisa", SurahNameAR: "النساء", verses: "176 Verses"),
  ];
  List<String> englishNames = [
    "Al-Fatiha", "Al-Baqarah", "Aal-E-Imran", "An-Nisa", "Al-Ma'idah", "Al-An'am",
    "Al-A'raf", "Al-Anfal", "At-Tawbah", "Yunus", "Hud", "Yusuf", "Ar-Ra'd",
    "Ibrahim", "Al-Hijr", "An-Nahl", "Al-Isra", "Al-Kahf", "Maryam", "Taha",
    "Al-Anbiya", "Al-Hajj", "Al-Mu'minun", "An-Nur", "Al-Furqan", "Ash-Shu'ara",
    "An-Naml", "Al-Qasas", "Al-Ankabut", "Ar-Rum", "Luqman", "As-Sajda",
    "Al-Ahzab", "Saba", "Fatir", "Ya-Sin", "As-Saffat", "Sad", "Az-Zumar",
    "Ghafir", "Fussilat", "Ash-Shura", "Az-Zukhruf", "Ad-Dukhan", "Al-Jathiya",
    "Al-Ahqaf", "Muhammad", "Al-Fath", "Al-Hujurat", "Qaf", "Adh-Dhariyat",
    "At-Tur", "An-Najm", "Al-Qamar", "Ar-Rahman", "Al-Waqia", "Al-Hadid",
    "Al-Mujadila", "Al-Hashr", "Al-Mumtahina", "As-Saff", "Al-Jumu'a",
    "Al-Munafiqoon", "At-Taghabun", "At-Talaq", "At-Tahrim", "Al-Mulk",
    "Al-Qalam", "Al-Haqqa", "Al-Ma'arij", "Nuh", "Al-Jinn", "Al-Muzzammil",
    "Al-Muddathir", "Al-Qiyama", "Al-Insan", "Al-Mursalat", "An-Naba",
    "An-Nazi'at", "Abasa", "At-Takwir", "Al-Infitar", "Al-Mutaffifin",
    "Al-Inshiqaq", "Al-Burooj", "At-Tariq", "Al-Ala", "Al-Ghashiyah", "Al-Fajr",
    "Al-Balad", "Ash-Shams", "Al-Lail", "Ad-Duha", "Al-Inshirah", "At-Tin",
    "Al-Alaq", "Al-Qadr", "Al-Bayyina", "Az-Zalzalah", "Al-Adiyat", "Al-Qaria",
    "At-Takathur", "Al-Asr", "Al-Humazah", "Al-Fil", "Quraish", "Al-Ma'un",
    "Al-Kawthar", "Al-Kafiroon", "An-Nasr", "Al-Masad", "Al-Ikhlas", "Al-Falaq",
    "An-Nas"
  ];
  List<String> arabicNames = [
    "الفاتحة", "البقرة", "آل عمران", "النساء", "المائدة", "الأنعام", "الأعراف",
    "الأنفال", "التوبة", "يونس", "هود", "يوسف", "الرعد", "إبراهيم", "الحجر",
    "النحل", "الإسراء", "الكهف", "مريم", "طه", "الأنبياء", "الحج", "المؤمنون",
    "النور", "الفرقان", "الشعراء", "النمل", "القصص", "العنكبوت", "الروم",
    "لقمان", "السجدة", "الأحزاب", "سبأ", "فاطر", "يس", "الصافات", "ص",
    "الزمر", "غافر", "فصلت", "الشورى", "الزخرف", "الدخان", "الجاثية",
    "الأحقاف", "محمد", "الفتح", "الحجرات", "ق", "الذاريات", "الطور", "النجم",
    "القمر", "الرحمن", "الواقعة", "الحديد", "المجادلة", "الحشر", "الممتحنة",
    "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق", "التحريم", "الملك",
    "القلم", "الحاقة", "المعارج", "نوح", "الجن", "المزمل", "المدثر",
    "القيامة", "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس", "التكوير",
    "الإنفطار", "المطففين", "الإنشقاق", "البروج", "الطارق", "الأعلى",
    "الغاشية", "الفجر", "البلد", "الشمس", "الليل", "الضحى", "الشرح", "التين",
    "العلق", "القدر", "البينة", "الزلزلة", "العاديات", "القارعة", "التكاثر",
    "العصر", "الهمزة", "الفيل", "قريش", "الماعون", "الكوثر", "الكافرون",
    "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];
  List<String> versesCount = [
    "7", "286", "200", "176", "120", "165", "206", "75", "129", "109", "123", "111",
    "43", "52", "99", "128", "111", "110", "98", "135", "112", "78", "118", "64",
    "77", "227", "93", "88", "69", "60", "34", "30", "73", "54", "45", "83", "182",
    "88", "75", "85", "54", "53", "89", "59", "37", "35", "38", "29", "18", "45",
    "60", "49", "62", "55", "78", "96", "29", "22", "24", "13", "14", "11", "11",
    "18", "12", "12", "30", "52", "52", "44", "28", "28", "20", "56", "40", "31",
    "50", "40", "46", "42", "29", "19", "36", "25", "22", "17", "19", "26", "30",
    "20", "15", "21", "11", "8", "8", "19", "5", "8", "11", "11", "3", "9", "5",
    "4", "6"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.tajmahal),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: AppColor.secondoryColor.withOpacity(0.8), // Overlay color with opacity
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              upperlogo(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Sura Name",
                    filled: true,
                    fillColor: Colors.transparent.withOpacity(0.3),
                    hintStyle: TextStyle(
                      color: AppColor.searchColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: ImageIcon(
                      AssetImage(AppAssets.firsticon),
                      color: AppColor.primaryColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColor.primaryColor,
                        width: 1.8,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColor.primaryColor,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColor.primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  "Most Recently",
                  style: TextStyle(
                      color: AppColor.searchColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 155,
                child: ListView.builder(
                  itemCount: recentdatalist.length,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => surahview(recenData: recentdatalist[index]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text(
                  "Surah List",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: AppColor.searchColor),
                ),
              ),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              endIndent: 60,
              indent: 50,
              color: AppColor.primaryColor,
              thickness: 1.4,
            ),
            itemCount: englishNames.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, quranDetailView.routeName);
              },
              child: verticalSurahView(
                NameEN: englishNames[index],
                NameAr: arabicNames[index],
                verses: versesCount[index],
                Surahnumber: (index + 1).toString(),
              ),
            ),
          )
          ],
          ),
        ),
      ),
    );
  }
}
