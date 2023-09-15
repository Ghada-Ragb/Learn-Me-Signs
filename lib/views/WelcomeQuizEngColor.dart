import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:learn_me_signs/controller/QuizEngColor.dart';
import 'package:learn_me_signs/views/QuizScreenEngColor.dart';
import 'package:learn_me_signs/widgets/CustomButton.dart';

class WelcomeScreenEngColor extends StatefulWidget {
  const WelcomeScreenEngColor({Key? key}) : super(key: key);
  static const routeName = '/welcome_screen7';

  @override
  State<WelcomeScreenEngColor> createState() => _WelcomeScreenEngColorState();
}

class _WelcomeScreenEngColorState extends State<WelcomeScreenEngColor> {
  final _nameController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey();

  void _submit(context) {
    FocusScope.of(context).unfocus();
    if (!_formkey.currentState!.validate()) return;
    _formkey.currentState!.save();
    Get.offAndToNamed(QuizScreenEngColor.routeName);
    Get.find<QuizEngColor>().startTimer();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F1ED),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 113,
                          backgroundColor: Color.fromARGB(155, 160, 102, 180),
                          child: CircleAvatar(
                            radius: 110,
                            backgroundImage:
                                AssetImage('assets/images/IntroQuiz.jpg'),
                          ),
                        ),
                        Text(
                          '  Let\'s start Quiz Colors ',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                color: const Color.fromARGB(155, 160, 102, 180),
                                fontFamily: 'Lobster',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          ' Enter Your Name ',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                color: const Color.fromARGB(155, 160, 102, 180),
                                fontFamily: 'Lobster',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Form(
                          key: _formkey,
                          child: GetBuilder<QuizEngColor>(
                            init: Get.find<QuizEngColor>(),
                            builder: (controller) => TextFormField(
                              controller: _nameController,
                              style: const TextStyle(
                                color: Color.fromARGB(155, 160, 102, 180),
                                fontSize: 20,
                              ),
                              decoration: const InputDecoration(
                                  labelText: 'Full Name',
                                  labelStyle: TextStyle(
                                    color: Color.fromARGB(155, 160, 102, 180),
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(155, 160, 102, 180),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)))),
                              validator: (String? val) {
                                if (val!.isEmpty) {
                                  return 'Name should not be empty';
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (String? val) {
                                controller.name = val!.trim().toUpperCase();
                              },
                              onFieldSubmitted: (_) => _submit(context),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                              width: double.infinity,
                              onPressed: () => _submit(context),
                              text: 'Lets Start Quiz'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
