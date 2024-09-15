import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isObssucre = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD5F2E8),
      body: SingleChildScrollView(
        child: Padding(
          key: _formKey,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 46,
              ),
              const Text(
                'Log In to your account',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 10) return 'không đủ 10 ký tự';
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your name',
                  hintStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(
                height: 47,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 10) return 'không đủ 10 ký tự';
                  return null;
                },
                obscureText: _isObssucre,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObssucre ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() {
                      _isObssucre = !_isObssucre;
                    }),
                  ),
                ),
              ),
              const SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.task,
                            color: Color(0xff2D4990),
                          ),
                          const SizedBox(
                            height: 48,
                            width: 3,
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero, // Bỏ padding mặc định
                              minimumSize:
                                  const Size(0, 0), // Kích thước tối thiểu
                              tapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Thu nhỏ vùng bấm
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Remember Me',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff2D4990)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   width: 10,
                  //   height: 48,
                  // ),
                  Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, // Bỏ padding mặc định
                          minimumSize: const Size(0, 0), // Kích thước tối thiểu
                          tapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, // Thu nhỏ vùng bấm
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Forgotten password?',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff2D4990)),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    backgroundColor: const Color(0xff2D4990),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Or',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(children: [
                    Column(
                      children: [
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
                          width: 22,
                          height: 25,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: double.infinity,
                      width: 15,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Log in with your Google account',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text(
                        'Dont’t have an account?',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                    width: 5,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, // Bỏ padding mặc định
                          minimumSize: const Size(0, 0), // Kích thước tối thiểu
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Color(0xff2D4990)),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
