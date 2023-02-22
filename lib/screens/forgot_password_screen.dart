import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/colors.dart';
import 'package:em_audio/components/rounded_button.dart';
import 'package:em_audio/screens/enter_screen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImg3),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Esqueci a senha',
            style: TextStyle(color: kPrimaryTextColor, fontSize: 16),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(const EnterScreen());
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 16,
              color: kPrimaryTextColor,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text.rich(
                    TextSpan(
                      text: 'Não se preocupe! \n',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryTextColor),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Você está a um passo de redefinir sua senha.',
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kFieldsAndButtonColor,
                ),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: kPrimaryTextColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email_rounded,
                      color: Colors.grey,
                    ),
                    hintText: 'E-mail',
                  ),
                ),
              ),
              const Text.rich(
                TextSpan(
                  text: 'Clique em Enviar para receber instruções de \n',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: kPrimaryTextColor),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'redefinição de senha ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 12),
                    ),
                    TextSpan(
                      text: 'em sua caixa de entrada',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.grey,
                          fontSize: 12),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 65,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: kPrimaryTextColor,
                      ),
                      backgroundColor: kFieldsAndButtonColor,
                    ),
                    child: Text(
                      "enviar".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: kPrimaryTextColor,
                      ),
                    ),
                    onPressed: () {
                      //TODO AQUI
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
