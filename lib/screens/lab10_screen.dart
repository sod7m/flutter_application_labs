import 'package:flutter/material.dart';

class Hetman {
  final String name;
  final String years;
  final String description;
  final String imageUrl;

  const Hetman({
    required this.name,
    required this.years,
    required this.description,
    required this.imageUrl,
  });
}

class Lab10Screen extends StatefulWidget {
  const Lab10Screen({super.key});

  @override
  State<Lab10Screen> createState() => _Lab10ScreenState();
}

class _Lab10ScreenState extends State<Lab10Screen> {
  int? selectedIndex;

  static const List<Hetman> hetmans = [
    Hetman(
      name: 'Богдан Хмельницький',
      years: '1648–1657',
      description:
          'Гетьман Війська Запорозького, засновник Української козацької держави. '
          'Очолив національно-визвольну війну українського народу проти Речі Посполитої. '
          'Під його керівництвом була створена козацька держава з власним урядом, військом та судовою системою.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Bohdan_Khmelnytsky%2C_Hetman_of_Ukraine_1595-1657.jpg/800px-Bohdan_Khmelnytsky%2C_Hetman_of_Ukraine_1595-1657.jpg',
    ),
    Hetman(
      name: 'Іван Мазепа',
      years: '1687–1709',
      description:
          'Гетьман Війська Запорозького, меценат, політичний діяч. '
          'Прагнув створити незалежну Українську державу. '
          'Відомий як покровитель мистецтв та освіти, за його часів розквітло українське бароко.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%86%D0%B2%D0%B0%D0%BD%D0%B0_%D0%9C%D0%B0%D0%B7%D0%B5%D0%BF%D0%B8.jpg/800px-%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%86%D0%B2%D0%B0%D0%BD%D0%B0_%D0%9C%D0%B0%D0%B7%D0%B5%D0%BF%D0%B8.jpg',
    ),
    Hetman(
      name: 'Петро Сагайдачний',
      years: '1616–1622',
      description:
          'Гетьман реєстрового козацтва, видатний полководець. '
          'Організував успішні морські походи проти Османської імперії. '
          'Сприяв розвитку православної церкви та освіти, підтримував Київське братство.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Petro_Konashevych-Sahaidachny.jpg/800px-Petro_Konashevych-Sahaidachny.jpg',
    ),
    Hetman(
      name: 'Іван Виговський',
      years: '1657–1659',
      description:
          'Гетьман Війська Запорозького, дипломат. '
          'Уклав Гадяцький договір з Річчю Посполитою, який передбачав створення Великого князівства Руського. '
          'Переміг московське військо у Конотопській битві 1659 року.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Ivan_Vyhovsky.PNG/800px-Ivan_Vyhovsky.PNG',
    ),
    Hetman(
      name: 'Пилип Орлик',
      years: '1710–1742',
      description:
          'Гетьман України в еміграції, автор першої української конституції. '
          '«Пакти і Конституції» 1710 року вважаються однією з перших конституцій у світі. '
          'Все життя боровся за незалежність України.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Pylyp_Orlyk.jpg/800px-Pylyp_Orlyk.jpg',
    ),
    Hetman(
      name: 'Данило Апостол',
      years: '1727–1734',
      description:
          'Гетьман Лівобережної України, реформатор. '
          'Провів важливі адміністративні та судові реформи. '
          'Домігся підтвердження автономних прав Гетьманщини від російського уряду.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Danylo_Apostol.jpg/800px-Danylo_Apostol.jpg',
    ),
    Hetman(
      name: 'Кирило Розумовський',
      years: '1750–1764',
      description:
          'Останній гетьман України, президент Російської академії наук. '
          'Намагався відновити автономію України та зробити гетьманство спадковим. '
          'За його правління Глухів став культурним центром Гетьманщини.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Kirill_Razumovskiy.jpg/800px-Kirill_Razumovskiy.jpg',
    ),
    Hetman(
      name: 'Іван Скоропадський',
      years: '1708–1722',
      description:
          'Гетьман Лівобережної України після Полтавської битви. '
          'Намагався зберегти автономію Гетьманщини в складних політичних умовах. '
          'За його правління був виданий указ про заборону обирати гетьмана без дозволу царя.',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Ivan_Skoropadskiy.jpg/800px-Ivan_Skoropadskiy.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Українські гетьмани'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: hetmans.length,
        itemBuilder: (context, index) {
          final hetman = hetmans[index];
          final isSelected = selectedIndex == index;

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            elevation: isSelected ? 8 : 2,
            color: isSelected
                ? Theme.of(context).colorScheme.primaryContainer
                : null,
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = isSelected ? null : index;
                });
              },
              borderRadius: BorderRadius.circular(12),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            hetman.imageUrl,
                            width: 80,
                            height: 100,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 80,
                                height: 100,
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              );
                            },
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                width: 80,
                                height: 100,
                                color: Colors.grey[200],
                                child: const Center(
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hetman.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.primary
                                      : null,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Роки правління: ${hetman.years}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              const SizedBox(height: 8),
                              if (!isSelected)
                                Text(
                                  hetman.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(fontSize: 14),
                                ),
                            ],
                          ),
                        ),
                        Icon(
                          isSelected
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                    if (isSelected) ...[
                      const SizedBox(height: 12),
                      const Divider(),
                      const SizedBox(height: 8),
                      Text(
                        hetman.description,
                        style: const TextStyle(fontSize: 15, height: 1.5),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
