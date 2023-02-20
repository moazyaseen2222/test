import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  String _content = 'استغفار';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(onSelected: (String value) {
            if (value != _content) {
              setState(() {
                _content = value;
                _counter = 0;
              });
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text(
                  'استغفار',
                  style: GoogleFonts.arefRuqaa(),
                ),
                value: 'استغفر الله',
              ),
              PopupMenuItem(
                child: Text('تسبيح', style: GoogleFonts.arefRuqaa()),
                value: 'سبحان الله',
              ),
              PopupMenuItem(
                child: Text('تهليل', style: GoogleFonts.arefRuqaa()),
                value: 'لا إله إلا الله',
              ),
            ];
          }),
        ],
        title: Text(
          'مسبحة الاذكار',
          style: GoogleFonts.arefRuqaa(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [Colors.blue.shade200, Colors.pink.shade200])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //  color: Colors.grey,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/sebha.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Text(
                    _content,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arefRuqaa(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(10))),
                          primary: Colors.teal),
                      onPressed: () {
                        setState(() => ++_counter);
                      },
                      child: Text(
                        _content,
                        style: GoogleFonts.arefRuqaa(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(10)),
                            )),
                        onPressed: () {
                          setState(() => _counter = 0);
                        },
                        child: Text(
                          'تصفير',
                          style: GoogleFonts.arefRuqaa(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
