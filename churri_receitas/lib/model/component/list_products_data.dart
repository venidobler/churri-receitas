import 'package:churry/model/products_model.dart';

List<Product> productsData = [
  Product(
    name: 'Hambúrguer Caseiro',
    description:
        'Nada melhor para receber os amigos no fim de semana do que um delicioso hambúrguer artesanal, com aquele toquezinho caseiro especial! Quer aprender como fazer? Cola aqui que a gente te dá o passo a passo!',
    imageUrl: 'assets/images/Hamburguer.png',
    recipe: [
      RecipeStep(
        text: '1 Kg de carne moída (preferencialmente de patinho)',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '1 Cebola picada',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'Cebolinha a gosto',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'Orégano a gosto',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '1 Sache de creme de cebola',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '4 Dentes de alho',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'Sal a gosto',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'Pimenta a gosto',
        imagePath: 'assets/images/IconReceita.png',
      ),
    ],
    preparation: '''
    Tempo estimado: 30 minutos\n\n
    1. Misture todos os ingredientes, amasse bem e forme bolinhas, depois achate para ter a forma de hambúrguer.\n
    2. Frite numa frigideira antiaderente, coloque uma colher de óleo pois a carne não tem gordura\n
  ''',
  ),
  Product(
    name: 'Lasanha de Carne',
    description: 'Uma deliciosa lasanha de carne feita em casa!',
    imageUrl: 'assets/images/Lasanha.png',
    recipe: [
      RecipeStep(
        text: '500g de massa para lasanha pré-cozida',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '500g de carne moída',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '1 cebola picada',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '2 dentes de alho picados',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '400g de molho de tomate',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '300g de queijo mussarela ralado',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '200g de queijo parmesão ralado',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'Azeite, sal e pimenta a gosto',
        imagePath: 'assets/images/IconReceita.png',
      ),
    ],
    preparation: '''
      Tempo estimado: 1 hora e 30 minutos\n\n
      1. Em uma panela, aqueça o azeite e refogue a cebola e o alho.\n
      2. Acrescente a carne moída e cozinhe até dourar.\n
      3. Adicione o molho de tomate, tempere com sal e pimenta a gosto e deixe cozinhar por 10 minutos.\n
      4. Em uma forma, monte a lasanha alternando camadas de massa, molho de carne e queijo, finalizando com queijo mussarela por cima.\n
      5. Cubra a forma com papel-alumínio e leve ao forno preaquecido a 180°C por 30 minutos.\n
      6. Retire o papel-alumínio e deixe assar por mais 15 minutos ou até gratinar.\n
      7. Retire do forno, deixe descansar por alguns minutos e sirva quente.
      ''',
  ),
  Product(
    name: 'Pudim de Leite Condensado',
    description: 'Um clássico pudim cremoso e delicioso!',
    imageUrl: 'assets/images/Pudim.png',
    recipe: [
      RecipeStep(
        text: '1 lata de leite condensado',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'A mesma medida (lata) de leite integral',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '4 ovos',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '1 xícara (chá) de açúcar',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: 'Calda de caramelo pronta (ou faça a sua)',
        imagePath: 'assets/images/IconReceita.png',
      ),
    ],
    preparation: '''
      Tempo estimado: 1 hora\n\n
      1. Preaqueça o forno a 180°C.\n
      2. Em um liquidificador, coloque o leite condensado, o leite integral, os ovos e bata por alguns minutos até obter uma mistura homogênea.\n
      3. Em uma forma de pudim, derreta o açúcar em fogo médio/baixo até obter um caramelo dourado. Espalhe o caramelo pela forma, cobrindo toda a superfície.\n
      4. Despeje a mistura do liquidificador na forma caramelizada.\n
      5. Cubra a forma com papel-alumínio e leve ao forno em banho-maria por aproximadamente 45-50 minutos ou até que o pudim esteja firme (faça o teste do palito).\n
      6. Retire do forno, deixe esfriar e leve à geladeira por algumas horas ou de um dia para o outro.\n
      7. Desenforme o pudim em um prato e sirva gelado.
    ''',
  ),
  Product(
    name: 'Bolo de Cenoura com Cobertura de Chocolate',
    description:
        'Um bolo fofinho de cenoura com uma deliciosa cobertura cremosa de chocolate!',
    imageUrl: 'assets/images/BoloCenoura.png',
    recipe: [
      RecipeStep(
        text: '3 cenouras médias raladas',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '3 ovos',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '1 xícara (chá) de óleo',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '2 xícaras (chá) de açúcar',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '2 xícaras (chá) de farinha de trigo',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text: '1 colher (sopa) de fermento em pó',
        imagePath: 'assets/images/IconReceita.png',
      ),
      RecipeStep(
        text:
            'Cobertura de chocolate a gosto (pode ser ganache ou brigadeiro mole)',
        imagePath: 'assets/images/IconReceita.png',
      ),
    ],
    preparation: '''
      Tempo estimado: 1 hora\n\n
      1. Preaqueça o forno a 180°C.\n
      2. No liquidificador, bata as cenouras, os ovos e o óleo até obter uma mistura homogênea.\n
      3. Em uma tigela, misture o açúcar, a farinha de trigo e o fermento em pó.\n
      4. Acrescente a mistura do liquidificador à tigela dos ingredientes secos e misture bem até obter uma massa homogênea.\n
      5. Despeje a massa em uma forma untada e enfarinhada e leve ao forno por aproximadamente 40 minutos ou até dourar e ao fazer o teste do palito ele saia limpo.\n
      6. Retire o bolo do forno, deixe esfriar e desenforme.\n
      7. Cubra o bolo com a cobertura de chocolate desejada (pode ser ganache ou brigadeiro mole) e sirva a seguir.
    ''',
  ),
];
