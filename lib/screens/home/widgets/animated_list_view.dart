import 'package:flutter/material.dart';
import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;
  const AnimatedListView({super.key, required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: '15ª Campus Party Brasil',
          subtitle: 'Participar (27/07 a 30/07)',
          image: const AssetImage('images/logo_cpbr.png'),
          margin: listSlidePosition.value * 11,
        ),
        ListData(
          title: 'Congresso Nacional da Estética',
          subtitle: 'Participar (25/07 a 30/07)',
          image: const AssetImage('images/logo_estetica.png'),
          margin: listSlidePosition.value * 10,
        ),
        ListData(
          title: 'Congresso Nacional em Diabetes',
          subtitle: 'Participar (27/07 a 30/07)',
          image: const AssetImage('images/logo_diabetes.png'),
          margin: listSlidePosition.value * 9,
        ),
        ListData(
          title: 'Encontro Brasileiro de Finanças',
          subtitle: 'Participar (27/09 a 29/07)',
          image: const AssetImage('images/logo_money.png'),
          margin: listSlidePosition.value * 8,
        ),
        ListData(
          title: 'Feira Mega Artesanal',
          subtitle: 'Participar (28/07 a 02/09)',
          image: const AssetImage('images/logo_artesanato.png'),
          margin: listSlidePosition.value * 7,
        ),
        ListData(
          title: 'Jogo do Corinthians',
          subtitle: 'Participar (Hoje as 18:30)',
          image: const AssetImage('images/logo_fut.png'),
          margin: listSlidePosition.value * 6,
        ),
        ListData(
          title: 'Jogo do São Paulo',
          subtitle: 'Participar (Amanhã as 11:00)',
          image: const AssetImage('images/logo_fut.png'),
          margin: listSlidePosition.value * 5,
        ),
      ],
    );
  }
}
