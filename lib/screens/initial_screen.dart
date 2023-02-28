import 'package:em_audio/components/assets_images.dart';
import 'package:em_audio/components/colors.dart';
import 'package:em_audio/components/text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage(backgroundImg3),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: GNav(
                color: kPrimaryTextColor,
                activeColor: kPrimaryColor,
                tabBackgroundColor: kFieldsAndButtonColor,
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon: Icons.home_work_outlined,
                    text: 'Início',
                  ),
                  GButton(
                    icon: Icons.list_alt_outlined,
                    text: 'Listas',
                  ),
                  GButton(
                    icon: Icons.search_outlined,
                    text: 'Pesquisar',
                  ),
                  GButton(
                    icon: Icons.favorite_border_outlined,
                    text: 'Favoritos',
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Image.asset(
                welcomeScreenImg,
                width: 100,
                height: 50,
                color: kPrimaryColor,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          endDrawer: Drawer(
            backgroundColor: kFieldsAndButtonColor,
            child: ListView(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Perfil'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Plano'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Termos e Condições de Uso'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Política de Privacidade'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Reportar um Problema'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Alterar Senha'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sair'),
                ),
              ],
            ),
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MyTextButton(
                    text: 'Curso Regular',
                    onPressed: () {},
                  ),
                  MyTextButton(
                    text: 'Legislação',
                    onPressed: () {},
                  ),
                  MyTextButton(
                    text: 'Jurisprudência',
                    onPressed: () {},
                  ),
                  MyTextButton(
                    text: 'Editais',
                    onPressed: () {},
                  ),
                  MyTextButton(
                    text: 'Podcasts',
                    onPressed: () {},
                  ),
                  MyTextButton(
                    text: 'Vade Mecum',
                    onPressed: () {},
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
