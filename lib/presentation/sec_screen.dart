import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: const Color.fromRGBO(63, 57, 108, 1),
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Код авторизации',
          style: TextStyle(
            fontSize: 21,
            color: Color.fromRGBO(57, 74, 108, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/logo.svg',
                    height: 64, width: 64, semanticsLabel: 'Acme Logo'),
                const SizedBox(
                  width: 24,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 75.0)),
                const Text(
                  'Get Power',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 42.0,
                      color: Color.fromRGBO(64, 67, 103, 1)),
                ),
              ],
            ),
            const Text(
              'На номер +7 (999) 888 666 55 отправлена СМС \nс кодом подтверждения телефона',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(57, 74, 108, 1),
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Proximal Nova'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
              child: TextField(
                  style: const TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(199, 199, 217, 1), width: 1),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(227, 227, 249, 1))),
                      hintText: "Введите код подтверждения",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(186, 192, 208, 1)),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      fillColor: const Color.fromRGBO(227, 227, 249, 1),
                      contentPadding: const EdgeInsets.all(5),
                      filled: true)),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(33, 202, 61, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      // primary: const Color.fromRGBO(33, 202, 61, 1),
                      // onPrimary: const Color.fromRGBO(255, 255, 255, 1),
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  //
                  // style: ElevatedButton.styleFrom(
                  //
                  //
                  // ),
                  onPressed: () {},
                  child: const Text('Войти',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            RichText(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(
                      57,
                      74,
                      108,
                      1,
                    )),
                text:
                    'Нажимая на кнопку "Авторизоваться"\n Вы соглашаетесь с\n',
                children: <TextSpan>[
                  TextSpan(
                      text: 'Политикой конфиденциальности',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(51, 102, 187, 1))),
                ],
              ),
            ),
          ]),
    );
  }
}
