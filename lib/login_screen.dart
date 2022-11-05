import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isScure = true;
  var icon = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    emailController.text = 'email@gmail.com';
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            }
                            if (!value.contains('@')) {
                              return 'it have to be an email';
                            }
                          },
                          decoration: InputDecoration(
                              label: Text('Email'),
                              prefixIcon: Icon(Icons.email),
                              hintText: 'ex@mple.com',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required';
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isScure,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        hintText: 'p@assw0rd',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isScureText();
                              });
                            },
                            icon: Icon(icon)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print('done');
                        }
                      },
                      child: Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ))),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      TextButton(onPressed: () {}, child: Text('Register'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  isScureText() {
    if (isScure) {
      isScure = false;
      icon = Icons.panorama_fish_eye;
    } else {
      isScure = true;
      icon = Icons.remove_red_eye;
    }
  }
}
