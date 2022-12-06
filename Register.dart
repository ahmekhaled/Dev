import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Login.dart';
import 'SearchPlates.dart';
import 'constants.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 240, top: 30).r,
              child: Image.asset('assets/images/motorbike.png', scale: 1.5.w),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15).r,
              child: Text(
                'Create Account',
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.circular(30.0).r,
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
                          labelText: 'Full name',
                          labelStyle: TextStyle(color: lightGreyReceiptBG),
                          prefixIcon: Icon(Icons.person_outline,color: Colors.black,),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
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
                          labelText: 'Plates number',
                          labelStyle: TextStyle(color: lightGreyReceiptBG),
                          prefixIcon: Icon(Icons.calendar_view_day_outlined,color: Colors.black,),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
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
                          prefixIcon: Icon(Icons.phone,color: Colors.black,),
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
                          prefixIcon: Icon(Icons.lock,color: Colors.black,),
                          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black),
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
                          labelText: 'Confirm password',
                          labelStyle: TextStyle(color: lightGreyReceiptBG),
                          prefixIcon: Icon(Icons.lock,color: Colors.black,),
                          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black),
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
                        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const Searchplates())); },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Icon(Icons.arrow_forward,color: Colors.white,size: 35,)
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                ),
                TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const Login()));}, child: const Text('Login',style: TextStyle(color: orangeSecondaryColor),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
