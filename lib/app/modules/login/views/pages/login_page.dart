import 'package:barber_shopp/app/modules/login/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: MediaQuery.sizeOf(context).height,
          width: screenWidth > 600 ? 600 : screenWidth,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenWidth < 650 ? 50 : 100,
                  ),
                  SizedBox(
                      height:
                          MediaQuery.sizeOf(context).height < 650 ? 140 : 300,
                      child: Image.asset(
                          alignment: Alignment.center,
                          fit: BoxFit.fitHeight,
                          'assets/images/login.png')),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    label: 'E-mail',
                    controller: controllerEmail,
                    hintText: 'Insira seu e-mail',
                    prefixIcon: Icons.email_outlined,
                    suffixIcon: null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    label: 'Senha',
                    controller: controllerSenha,
                    hintText: 'Insira sua senha',
                    prefixIcon: Icons.password_outlined,
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Esqueci a senha',
                        style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontFamily: 'RobotoSlab',
                          fontSize: 20),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFDAEC76)),
                        elevation: MaterialStatePropertyAll(10),
                        fixedSize:
                            MaterialStatePropertyAll(Size(screenWidth, 50))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Registrar-se',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontFamily: 'RobotoSlab',
                          fontSize: 20),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        shadowColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        overlayColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        surfaceTintColor:
                            MaterialStatePropertyAll(Colors.transparent),
                        elevation: MaterialStatePropertyAll(10),
                        fixedSize:
                            MaterialStatePropertyAll(Size(screenWidth, 50))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
