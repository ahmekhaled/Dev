import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Register.dart';
import 'SearchPlates.dart';
import 'constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 240, top: 30).r,
              child: Image.asset('assets/images/car.png', scale: 0.5.w),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Text(
                'Please sign in to continue',
                style: TextStyle(color: lightGreyReceiptBG, fontSize: 15.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0).r,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: const Offset(0, 1),
                              blurRadius: 12.0.r)
                        ]),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      decoration: const InputDecoration(
                          labelText: 'Phone number',
                          labelStyle: TextStyle(color: lightGreyReceiptBG),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30.0).r,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: const Offset(0, 1),
                              blurRadius: 12.0.r)
                        ]),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: lightGreyReceiptBG),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                          suffixIcon:
                              Icon(Icons.remove_red_eye, color: Colors.black),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Container(
                  width: 200.w,
                  height: 50.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow:  [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 12.0.r)
                    ],
                    borderRadius: BorderRadius.circular(30.0.r),
                    color: orangeSecondaryColor,
                  ),
                  child:  Row(
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      TextButton(
                        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Searchplates())); },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(Icons.arrow_forward,color: Colors.white,size: 35,)
                    ],
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t hava an account? ',
                ),
                TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Register()));}, child: const Text('Register Now'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
