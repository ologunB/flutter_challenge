import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/data.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black87,
              Colors.black,
            ],
          ),
        ),
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds),
                      blendMode: BlendMode.darken,
                      child: Image.asset(
                        'assets/images/onboard$index.png',
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 60),
                          SafeArea(
                            child: Text(
                              '#MOVEYOURMIND',
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          const Spacer(flex: 5),
                          Text(
                            list[index].title,
                            style: GoogleFonts.rubik(
                              color: const Color(0xff16F581),
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            list[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(flex: 3),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
            if (_currentPage == 0)
              Align(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 50,
                ),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (_currentPage == 0) ...[
                      Text(
                        'COMENZÁ A VIVIR TU',
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'NT EXPERIENCE',
                        style: GoogleFonts.rubik(
                          color: const Color(0xff16F581),
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                    Center(
                      child: SizedBox(
                        height: 30,
                        child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: _currentPage == index
                                        ? null
                                        : const Color(0xff686968),
                                    border: Border.all(
                                      color: _currentPage == index
                                          ? const Color(0xff16F581)
                                          : const Color(0xff686968),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: MaterialButton(
                        color: const Color(0xff16F581),
                        height: 54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'iniciar sesión'.toUpperCase(),
                              style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
