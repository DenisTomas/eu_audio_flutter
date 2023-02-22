import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/colors.dart';
import 'package:em_audio/screens/enter_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(backgroundImg3), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[700],
                ),
                child: const TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.text_fields_sharp,
                      color: Colors.grey,
                    ),
                    hintText: 'Nome Completo',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[700],
                ),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    hintText: 'Celular (opicional)',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[700],
                ),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email_rounded,
                      color: Colors.grey,
                    ),
                    hintText: 'E-mail',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[700],
                ),
                child: const TextField(
                  obscureText: true,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key_rounded,
                      color: Colors.grey,
                    ),
                    hintText: 'Senha',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: kPrimaryTextColor,
                      ),
                      backgroundColor: kFieldsAndButtonColor,
                    ),
                    child: Text(
                      "Cadastrar".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      //TODO AQUI
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
                child: Text(
                  '---------------------------------- ou ----------------------------------',
                  style: TextStyle(color: kPrimaryTextColor, fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: kPrimaryTextColor,
                      ),
                      backgroundColor: Colors.blue.shade400,
                    ),
                    child: const Text(
                      "Entrar com Facebook",
                      style: TextStyle(
                        fontSize: 20,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Já tem uma conta? ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EnterScreen(),
                          ));
                    },
                    child: const Text(
                      'Faça Login',
                      style: TextStyle(color: kPrimaryTextColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Scaffold(
//       backgroundColor: Colors.black87,
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[700],
//               ),
//               child: const TextField(
//                 cursorColor: Colors.grey,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.text_fields_sharp,
//                     color: Colors.grey,
//                   ),
//                   hintText: 'Nome Completo',
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[700],
//               ),
//               child: const TextField(
//                 keyboardType: TextInputType.number,
//                 cursorColor: Colors.grey,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.phone,
//                     color: Colors.grey,
//                   ),
//                   hintText: 'Celular (opicional)',
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[700],
//               ),
//               child: const TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 cursorColor: Colors.grey,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.email_rounded,
//                     color: Colors.grey,
//                   ),
//                   hintText: 'E-mail',
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[700],
//               ),
//               child: const TextField(
//                 obscureText: true,
//                 cursorColor: Colors.grey,
//                 decoration: InputDecoration(
//                   icon: Icon(
//                     Icons.vpn_key_rounded,
//                     color: Colors.grey,
//                   ),
//                   hintText: 'Senha',
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(10),
//               child: GestureDetector(
//                 child: const Text(
//                   'Já tem uma conta?',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 onTap: () => {},
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 //CODE LATER
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Colors.grey.shade900,
//                     Colors.grey.shade700,
//                     Colors.grey.shade900,
//                   ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
//                 ),
//                 child: Text(
//                   'CADASTRAR',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
