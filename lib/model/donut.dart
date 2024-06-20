class Product {
  final String title;
  final String desctiption;
  final String image;
  final String calories;
  final String rating;
  final double price;
  final String category;
  int quantity;

  Product(
      {required this.title,
      required this.desctiption,
      required this.image,
      required this.calories,
      required this.rating,
      required this.price,
      required this.category,
      required this.quantity});
}

final List<Product> products = [
  Product(
      title: 'Chocolate',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/chocolate.png',
      calories: '65',
      rating: '4.5',
      price: 10.0,
      category: 'chocolate',
      quantity: 1),
  Product(
      title: 'Filled',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/filled.png',
      calories: '65',
      rating: '4.5',
      price: 7.95,
      category: 'filled',
      quantity: 1),
  Product(
      title: 'Careemy',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/careemy.png',
      calories: '65',
      rating: '4.5',
      price: 5.0,
      category: 'careemy',
      quantity: 1),
  Product(
      title: 'Decadent',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/decadent.png',
      calories: '65',
      rating: '4.5',
      price: 6.99,
      category: 'decadent',
      quantity: 1),
];
final List<Product> filter = [
  Product(
      title: 'Chocolate',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/chocolate.png',
      calories: '65',
      rating: '4.5',
      price: 10.0,
      category: 'chocolate',
      quantity: 1),
  Product(
      title: 'Filled',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/filled.png',
      calories: '65',
      rating: '4.5',
      price: 7.95,
      category: 'filled',
      quantity: 1),
  Product(
      title: 'Careemy',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/careemy.png',
      calories: '65',
      rating: '4.5',
      price: 5.0,
      category: 'careemy',
      quantity: 1),
  Product(
      title: 'Decadent',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/decadent.png',
      calories: '65',
      rating: '4.5',
      price: 6.99,
      category: 'decadent',
      quantity: 1),
  Product(
      title: 'Decadent',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/decadent.png',
      calories: '65',
      rating: '4.5',
      price: 6.99,
      category: 'decadent',
      quantity: 1),
  Product(
      title: 'Chocolate',
      desctiption:
          'Ring donut, Chocolate frosted topped with fondant and bisquit crush.',
      image: 'assets/donut_img/chocolate.png',
      calories: '65',
      rating: '4.5',
      price: 10.0,
      category: 'chocolate',
      quantity: 1),
];
