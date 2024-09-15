import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? _selectedDate;
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 117, 135),
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 60, 91, 106),
      body: Column(
        children: [
          const SizedBox(height: 32),
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn1.tuoitre.vn/thumb_w/1200/471584752817336320/2024/7/24/e20853b718b5bdebe4a4-1-17217839502901709842330-14-0-642-1200-crop-17217840161614446327.jpg'),
                    fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Wayne Jackson',
            style: TextStyle(color: Colors.white, fontSize: 27),
          ),
          const SizedBox(
            height: 16,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Information',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(179, 195, 186, 186)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Date of birth',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 82, 117, 135)
                            .withOpacity(0.3),
                      ),
                      child: Row(
                        children: [
                          Text(
                            style: const TextStyle(color: Colors.white),
                            _selectedDate != null
                                ? '${_selectedDate!.toLocal()}'.split(' ')[0]
                                : '1/1/1990',
                          ),
                          IconButton(
                            icon: const Icon(Icons.calendar_today_outlined),
                            color: Colors.white,
                            onPressed: () => _selectDate(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Phone number',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Container(
                      width: 170,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 82, 117, 135)
                            .withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://lh5.googleusercontent.com/proxy/RLuFlU4M335L0Eh0tzNC14P5Y75CV2oWBC6KKaNhGUVW8bpaNlFsWuu_j5D8AoZ6QmKWffzzGhjJDsEChmceqAJ2Az1QGzG6hipuhQYSaA'),
                                  )),
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                                child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone';
                                } else if (value.length > 10)
                                  return 'bạn nhập quá 10 số !!!';
                                return null;
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                hintText: 'Enter number',
                              ),
                              keyboardType: TextInputType.number,
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Email',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 82, 117, 135)
                            .withOpacity(0.3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return 'require'; // Yêu cầu nhập liệu
                            } else if (RegExp(
                                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(v)) {
                              return null; // Email hợp lệ
                            }
                            return 'invalid Email'; // Email không hợp lệ
                          },
                          decoration: const InputDecoration(
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2080),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}
