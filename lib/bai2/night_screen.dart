// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InForWeather extends StatelessWidget {
  final String weatherDetailsl1;
  final String weatherDetailsl2;
  final String weatherDetailsl3;
  final String weatherDetailsr1;
  final String weatherDetailsr2;
  final String weatherDetailsr3;
  const InForWeather({
    super.key,
    required this.weatherDetailsl1,
    required this.weatherDetailsl2,
    required this.weatherDetailsl3,
    required this.weatherDetailsr1,
    required this.weatherDetailsr2,
    required this.weatherDetailsr3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 110, 108, 108).withOpacity(0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SetionOneInRow(
              weatherDetailsl1: weatherDetailsl1,
              weatherDetailsl2: weatherDetailsl2,
              weatherDetailsl3: weatherDetailsl3),
          SetionTwoInRow(
              weatherDetailsr1: weatherDetailsr1,
              weatherDetailsr2: weatherDetailsr2,
              weatherDetailsr3: weatherDetailsr3)
        ],
      ),
    );
  }
}

class MyHomePageNight extends StatelessWidget {
  const MyHomePageNight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hình nền
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg-night.png',
                ),
                fit: BoxFit.cover, // Đảm bảo hình nền bao phủ toàn bộ màn hình
              ),
            ),
          ),
          // AppBar và body hiển thị phía trên hình nền
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent, // AppBar trong suốt
                elevation: 0, // Loại bỏ bóng mờ của AppBar
                title: const Text(
                  '40.73, -73.53',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ],
              ),
              // Nội dung body hiển thị bên dưới AppBar
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'New York',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/svg/WeatherIcon - status.svg',
                            height: 148,
                            width: 148,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Peace light',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w100,
                                color: Colors.white),
                          ),
                          const Text(
                            '12℃',
                            style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            'Duststorm, sandstorm, drifting or blowing snow',
                            style: TextStyle(
                                fontSize: 20,
                                // fontWeight: FontWeight.w100,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InForWeather(
                              weatherDetailsl1: 'Humidity 40%',
                              weatherDetailsl2: 'PM10 33.4µg/m³',
                              weatherDetailsl3: 'UV  2.2',
                              weatherDetailsr1: 'Wind  2km/h',
                              weatherDetailsr2: 'Sunrire  6:35',
                              weatherDetailsr3: 'Sunset  17:55'),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color:
                                    const Color.fromARGB(255, 255, 254, 254)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.sunny,
                                      color: Colors.white.withOpacity(0.40),
                                      weight: 21,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                      width: 8,
                                    ),
                                    const Text('FORECAT',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 231, 228, 228),
                                            fontSize: 20)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 1,
                                      color: Colors.white.withOpacity(0.40),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Max: 37.4℃',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Min: 22.1℃',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const WeatherForecat(
                                  time1: '12 PM',
                                  time2: '1 PM',
                                  time3: '2 PM',
                                  time4: '3 PM',
                                  iconWeather1: 'assets/svg/icon2-forecat.svg',
                                  iconWeather2: 'assets/svg/icon2-forecat.svg',
                                  iconWeather3: 'assets/svg/icon2-forecat.svg',
                                  iconWeather4: 'assets/svg/icon2-forecat.svg',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionComlumForecat extends StatelessWidget {
  final String time1;

  final String iconWeather1;
  final String time2;
  final String iconWeather2;
  final String time3;
  final String iconWeather3;
  final String time4;
  final String iconWeather4;
  const SectionComlumForecat({
    super.key,
    required this.time1,
    required this.iconWeather1,
    required this.time2,
    required this.iconWeather2,
    required this.time3,
    required this.iconWeather3,
    required this.time4,
    required this.iconWeather4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              time1,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SvgPicture.asset(
              iconWeather1,
              height: 24,
              width: 24,
            )
          ],
        ),
        Column(
          children: [
            Text(
              time2,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SvgPicture.asset(
              iconWeather2,
              height: 24,
              width: 24,
            )
          ],
        ),
        Column(
          children: [
            Text(
              time3,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SvgPicture.asset(
              iconWeather3,
              height: 24,
              width: 24,
            )
          ],
        ),
        Column(
          children: [
            Text(
              time4,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SvgPicture.asset(
              iconWeather4,
              height: 24,
              width: 24,
            )
          ],
        ),
      ],
    );
  }
}

class SetionOneInRow extends StatelessWidget {
  final String weatherDetailsl1;

  final String weatherDetailsl2;
  final String weatherDetailsl3;
  const SetionOneInRow({
    super.key,
    required this.weatherDetailsl1,
    required this.weatherDetailsl2,
    required this.weatherDetailsl3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          weatherDetailsl1,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          weatherDetailsl2,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          weatherDetailsl3,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}

class SetionTwoInRow extends StatelessWidget {
  final String weatherDetailsr1;

  final String weatherDetailsr2;
  final String weatherDetailsr3;
  const SetionTwoInRow({
    super.key,
    required this.weatherDetailsr1,
    required this.weatherDetailsr2,
    required this.weatherDetailsr3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          weatherDetailsr1,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          weatherDetailsr2,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          weatherDetailsr3,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 8.0)
      ],
    );
  }
}

class WeatherForecat extends StatelessWidget {
  final String time1;
  final String time2;
  final String time3;
  final String time4;
  final String iconWeather1;
  final String iconWeather2;
  final String iconWeather3;
  final String iconWeather4;
  const WeatherForecat({
    super.key,
    required this.time1,
    required this.time2,
    required this.time3,
    required this.time4,
    required this.iconWeather1,
    required this.iconWeather2,
    required this.iconWeather3,
    required this.iconWeather4,
  });

  @override
  Widget build(BuildContext context) {
    return SectionComlumForecat(
        time1: time1,
        iconWeather1: iconWeather1,
        time2: time2,
        iconWeather2: iconWeather2,
        time3: time3,
        iconWeather3: iconWeather3,
        time4: time4,
        iconWeather4: iconWeather4);
  }
}
