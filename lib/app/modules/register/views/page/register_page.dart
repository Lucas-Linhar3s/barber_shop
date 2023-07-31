import 'package:barber_shopp/app/modules/login/views/widgets/custom_text_form_field.dart';
import 'package:barber_shopp/app/modules/register/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: screenWidth > 600 ? 600 : screenWidth,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Registro',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RobotoSlab',
                        color: Color(0xFF595959)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                      label: 'Nome Completo',
                      prefixIcon: Icons.person_outline_outlined,
                      suffixIcon: null,
                      controller: controllerName,
                      hintText: 'Insira seu nome'),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                      label: 'E-mail',
                      prefixIcon: Icons.email_outlined,
                      suffixIcon: null,
                      controller: controllerEmail,
                      hintText: 'Insira seu e-mail'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                      label: 'Celular',
                      prefixIcon: Icons.phone_android_outlined,
                      suffixIcon: null,
                      controller: controllerPhone,
                      hintText: 'Insira seu telefone'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                      label: 'Senha',
                      prefixIcon: Icons.password_outlined,
                      suffixIcon: Icons.remove_red_eye,
                      controller: controllerPassword,
                      hintText: 'Insira sua senha'),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Criar',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
