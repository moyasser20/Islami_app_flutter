import 'package:flutter/material.dart';
import 'package:islamiapp/Models/recent_data.dart';
import 'package:islamiapp/core/constants/app_assets.dart';
import 'package:islamiapp/core/theme/app_colors.dart';
import 'package:islamiapp/features/layout/pages/quran/quran_details_view.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/horizontal_surah_view.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/SurahData.dart';
import 'package:islamiapp/features/layout/pages/quran/widgets/vertical_surah_view.dart';
import 'package:islamiapp/features/layout/widgets/upperLogo.dart';

class quranTab extends StatefulWidget {
  quranTab({super.key});

  @override
  State<quranTab> createState() => _quranTabState();
}

class _quranTabState extends State<quranTab> {
  String searchQuery  = "";

  List<SurahData> suraList = [
    SurahData(id: 1, nameEN: "Al-Fatihah", nameAR: "الفاتحة", verses: "7"),
    SurahData(id: 2, nameEN: "Al-Baqarah", nameAR: "البقرة", verses: "286"),
    SurahData(id: 3, nameEN: "Aal-E-Imran", nameAR: "آل عمران", verses: "200"),
    SurahData(id: 4, nameEN: "An-Nisa", nameAR: "النساء", verses: "176"),
    SurahData(id: 5, nameEN: "Al-Ma'idah", nameAR: "المائدة", verses: "120"),
    SurahData(id: 6, nameEN: "Al-An'am", nameAR: "الأنعام", verses: "165"),
    SurahData(id: 7, nameEN: "Al-A'raf", nameAR: "الأعراف", verses: "206"),
    SurahData(id: 8, nameEN: "Al-Anfal", nameAR: "الأنفال", verses: "75"),
    SurahData(id: 9, nameEN: "At-Tawbah", nameAR: "التوبة", verses: "129"),
    SurahData(id: 10, nameEN: "Yunus", nameAR: "يونس", verses: "109"),
    SurahData(id: 11, nameEN: "Hud", nameAR: "هود", verses: "123"),
    SurahData(id: 12, nameEN: "Yusuf", nameAR: "يوسف", verses: "111"),
    SurahData(id: 13, nameEN: "Ar-Ra'd", nameAR: "الرعد", verses: "43"),
    SurahData(id: 14, nameEN: "Ibrahim", nameAR: "إبراهيم", verses: "52"),
    SurahData(id: 15, nameEN: "Al-Hijr", nameAR: "الحجر", verses: "99"),
    SurahData(id: 16, nameEN: "An-Nahl", nameAR: "النحل", verses: "128"),
    SurahData(id: 17, nameEN: "Al-Isra", nameAR: "الإسراء", verses: "111"),
    SurahData(id: 18, nameEN: "Al-Kahf", nameAR: "الكهف", verses: "110"),
    SurahData(id: 19, nameEN: "Maryam", nameAR: "مريم", verses: "98"),
    SurahData(id: 20, nameEN: "Ta-Ha", nameAR: "طه", verses: "135"),
    SurahData(id: 21, nameEN: "Al-Anbiya", nameAR: "الأنبياء", verses: "112"),
    SurahData(id: 22, nameEN: "Al-Hajj", nameAR: "الحج", verses: "78"),
    SurahData(id: 23, nameEN: "Al-Mu'minun", nameAR: "المؤمنون", verses: "118"),
    SurahData(id: 24, nameEN: "An-Nur", nameAR: "النور", verses: "64"),
    SurahData(id: 25, nameEN: "Al-Furqan", nameAR: "الفرقان", verses: "77"),
    SurahData(id: 26, nameEN: "Ash-Shu'ara", nameAR: "الشعراء", verses: "227"),
    SurahData(id: 27, nameEN: "An-Naml", nameAR: "النمل", verses: "93"),
    SurahData(id: 28, nameEN: "Al-Qasas", nameAR: "القصص", verses: "88"),
    SurahData(id: 29, nameEN: "Al-Ankabut", nameAR: "العنكبوت", verses: "69"),
    SurahData(id: 30, nameEN: "Ar-Rum", nameAR: "الروم", verses: "60"),
    SurahData(id: 31, nameEN: "Luqman", nameAR: "لقمان", verses: "34"),
    SurahData(id: 32, nameEN: "As-Sajda", nameAR: "السجدة", verses: "30"),
    SurahData(id: 33, nameEN: "Al-Ahzab", nameAR: "الأحزاب", verses: "73"),
    SurahData(id: 34, nameEN: "Saba", nameAR: "سبأ", verses: "54"),
    SurahData(id: 35, nameEN: "Fatir", nameAR: "فاطر", verses: "45"),
    SurahData(id: 36, nameEN: "Ya-Sin", nameAR: "يس", verses: "83"),
    SurahData(id: 37, nameEN: "As-Saffat", nameAR: "الصافات", verses: "182"),
    SurahData(id: 38, nameEN: "Sad", nameAR: "ص", verses: "88"),
    SurahData(id: 39, nameEN: "Az-Zumar", nameAR: "الزمر", verses: "75"),
    SurahData(id: 40, nameEN: "Ghafir", nameAR: "غافر", verses: "85"),
    SurahData(id: 41, nameEN: "Fussilat", nameAR: "فصلت", verses: "54"),
    SurahData(id: 42, nameEN: "Ash-Shura", nameAR: "الشورى", verses: "53"),
    SurahData(id: 43, nameEN: "Az-Zukhruf", nameAR: "الزخرف", verses: "89"),
    SurahData(id: 44, nameEN: "Ad-Dukhan", nameAR: "الدخان", verses: "59"),
    SurahData(id: 45, nameEN: "Al-Jathiya", nameAR: "الجاثية", verses: "37"),
    SurahData(id: 46, nameEN: "Al-Ahqaf", nameAR: "الأحقاف", verses: "35"),
    SurahData(id: 47, nameEN: "Muhammad", nameAR: "محمد", verses: "38"),
    SurahData(id: 48, nameEN: "Al-Fath", nameAR: "الفتح", verses: "29"),
    SurahData(id: 49, nameEN: "Al-Hujurat", nameAR: "الحجرات", verses: "18"),
    SurahData(id: 50, nameEN: "Qaf", nameAR: "ق", verses: "45"),
    SurahData(id: 51, nameEN: "Adh-Dhariyat", nameAR: "الذاريات", verses: "60"),
    SurahData(id: 52, nameEN: "At-Tur", nameAR: "الطور", verses: "49"),
    SurahData(id: 53, nameEN: "An-Najm", nameAR: "النجم", verses: "62"),
    SurahData(id: 54, nameEN: "Al-Qamar", nameAR: "القمر", verses: "55"),
    SurahData(id: 55, nameEN: "Ar-Rahman", nameAR: "الرحمن", verses: "78"),
    SurahData(id: 56, nameEN: "Al-Waqia", nameAR: "الواقعة", verses: "96"),
    SurahData(id: 57, nameEN: "Al-Hadid", nameAR: "الحديد", verses: "29"),
    SurahData(id: 58, nameEN: "Al-Mujadila", nameAR: "المجادلة", verses: "22"),
    SurahData(id: 59, nameEN: "Al-Hashr", nameAR: "الحشر", verses: "24"),
    SurahData(id: 60, nameEN: "Al-Mumtahina", nameAR: "الممتحنة", verses: "13"),
    SurahData(id: 61, nameEN: "As-Saff", nameAR: "الصف", verses: "14"),
    SurahData(id: 62, nameEN: "Al-Jumu'a", nameAR: "الجمعة", verses: "11"),
    SurahData(id: 63, nameEN: "Al-Munafiqoon", nameAR: "المنافقون", verses: "11"),
    SurahData(id: 64, nameEN: "At-Taghabun", nameAR: "التغابن", verses: "18"),
    SurahData(id: 65, nameEN: "At-Talaq", nameAR: "الطلاق", verses: "12"),
    SurahData(id: 66, nameEN: "At-Tahrim", nameAR: "التحريم", verses: "12"),
    SurahData(id: 67, nameEN: "Al-Mulk", nameAR: "الملك", verses: "30"),
    SurahData(id: 68, nameEN: "Al-Qalam", nameAR: "القلم", verses: "52"),
    SurahData(id: 69, nameEN: "Al-Haqqa", nameAR: "الحاقة", verses: "52"),
    SurahData(id: 70, nameEN: "Al-Ma'arij", nameAR: "المعارج", verses: "44"),
    SurahData(id: 71, nameEN: "Nuh", nameAR: "نوح", verses: "28"),
    SurahData(id: 72, nameEN: "Al-Jinn", nameAR: "الجن", verses: "28"),
    SurahData(id: 73, nameEN: "Al-Muzzammil", nameAR: "المزمل", verses: "20"),
    SurahData(id: 74, nameEN: "Al-Muddathir", nameAR: "المدثر", verses: "56"),
    SurahData(id: 75, nameEN: "Al-Qiyama", nameAR: "القيامة", verses: "40"),
    SurahData(id: 76, nameEN: "Al-Insan", nameAR: "الإنسان", verses: "31"),
    SurahData(id: 77, nameEN: "Al-Mursalat", nameAR: "المرسلات", verses: "50"),
    SurahData(id: 78, nameEN: "An-Naba", nameAR: "النبأ", verses: "40"),
    SurahData(id: 79, nameEN: "An-Nazi'at", nameAR: "النازعات", verses: "46"),
    SurahData(id: 80, nameEN: "Abasa", nameAR: "عبس", verses: "42"),
    SurahData(id: 81, nameEN: "At-Takwir", nameAR: "التكوير", verses: "29"),
    SurahData(id: 82, nameEN: "Al-Infitar", nameAR: "الإنفطار", verses: "19"),
    SurahData(id: 83, nameEN: "Al-Mutaffifin", nameAR: "المطففين", verses: "36"),
    SurahData(id: 84, nameEN: "Al-Inshiqaq", nameAR: "الإنشقاق", verses: "25"),
    SurahData(id: 85, nameEN: "Al-Burooj", nameAR: "البروج", verses: "22"),
    SurahData(id: 86, nameEN: "At-Tariq", nameAR: "الطارق", verses: "17"),
    SurahData(id: 87, nameEN: "Al-Ala", nameAR: "الأعلى", verses: "19"),
    SurahData(id: 88, nameEN: "Al-Ghashiyah", nameAR: "الغاشية", verses: "26"),
    SurahData(id: 89, nameEN: "Al-Fajr", nameAR: "الفجر", verses: "30"),
    SurahData(id: 90, nameEN: "Al-Balad", nameAR: "البلد", verses: "20"),
    SurahData(id: 91, nameEN: "Ash-Shams", nameAR: "الشمس", verses: "15"),
    SurahData(id: 92, nameEN: "Al-Lail", nameAR: "الليل", verses: "21"),
    SurahData(id: 93, nameEN: "Ad-Duha", nameAR: "الضحى", verses: "11"),
    SurahData(id: 94, nameEN: "Al-Inshirah", nameAR: "الشرح", verses: "8"),
    SurahData(id: 95, nameEN: "At-Tin", nameAR: "التين", verses: "8"),
    SurahData(id: 96, nameEN: "Al-Alaq", nameAR: "العلق", verses: "19"),
    SurahData(id: 97, nameEN: "Al-Qadr", nameAR: "القدر", verses: "5"),
    SurahData(id: 98, nameEN: "Al-Bayyina", nameAR: "البينة", verses: "8"),
    SurahData(id: 99, nameEN: "Az-Zalzalah", nameAR: "الزلزلة", verses: "8"),
    SurahData(id: 100, nameEN: "Al-Adiyat", nameAR: "العاديات", verses: "11"),
    SurahData(id: 101, nameEN: "Al-Qaria", nameAR: "القارعة", verses: "11"),
    SurahData(id: 102, nameEN: "At-Takathur", nameAR: "التكاثر", verses: "8"),
    SurahData(id: 103, nameEN: "Al-Asr", nameAR: "العصر", verses: "3"),
    SurahData(id: 104, nameEN: "Al-Humazah", nameAR: "الهمزة", verses: "9"),
    SurahData(id: 105, nameEN: "Al-Fil", nameAR: "الفيل", verses: "5"),
    SurahData(id: 106, nameEN: "Quraish", nameAR: "قريش", verses: "4"),
    SurahData(id: 107, nameEN: "Al-Ma'un", nameAR: "الماعون", verses: "7"),
    SurahData(id: 108, nameEN: "Al-Kawthar", nameAR: "الكوثر", verses: "3"),
    SurahData(id: 109, nameEN: "Al-Kafiroon", nameAR: "الكافرون", verses: "6"),
    SurahData(id: 110, nameEN: "An-Nasr", nameAR: "النصر", verses: "3"),
    SurahData(id: 111, nameEN: "Al-Masad", nameAR: "المسد", verses: "5"),
    SurahData(id: 112, nameEN: "Al-Ikhlas", nameAR: "الإخلاص", verses: "4"),
    SurahData(id: 113, nameEN: "Al-Falaq", nameAR: "الفلق", verses: "5"),
    SurahData(id: 114, nameEN: "An-Nas", nameAR: "الناس", verses: "6"),
  ];
  List<SurahData> searchSurahModels  = [];

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
                  onChanged: (value) {
                    searchQuery = value;
                    search();
                    setState(() {

                    });
                  },
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
              Visibility(
                visible: searchQuery.isEmpty,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        itemCount: suraList.length,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => surahview(surahData: suraList[index]),
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
                      itemCount: suraList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            quranDetailView.routeName,
                            arguments: suraList[index],
                          );
                        },
                        child: verticalSurahView(
                          NameEN: suraList[index].nameEN,
                          NameAr: suraList[index].nameAR,
                          verses: suraList[index].verses,
                          Surahnumber: (index + 1).toString(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: searchQuery.isNotEmpty,
                child: ListView.builder(
                  itemCount: searchSurahModels.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        quranDetailView.routeName,
                        arguments: searchSurahModels[index],
                      );
                    },
                    child: verticalSurahView(
                      NameEN: searchSurahModels[index].nameEN,
                      NameAr: searchSurahModels[index].nameAR,
                      verses: searchSurahModels[index].verses,
                      Surahnumber: searchSurahModels[index].id.toString(),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void search() {
    searchSurahModels.clear(); // Clear the previous search results
    for (var sura in suraList) {
      if (sura.nameEN.toLowerCase().contains(searchQuery.toLowerCase()) ||
          sura.nameAR.contains(searchQuery)) {
        searchSurahModels.add(sura);
      }
    }
  }

}
