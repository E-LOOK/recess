class Service {
  final String title, url;
  int price, duration;

  Service({
    required this.url,
    required this.title,
    required this.price,
    required this.duration,
  });
}

// ignore: non_constant_identifier_names
List<Service> demo_products = [
  Service(
      title: "men cut", duration: 45, price: 200, url: 'assets/menscut.png'),
  Service(
      title: "woman cut", price: 125, duration: 60, url: 'assets/womencut.png'),
  Service(
      title: "hair Glow",
      price: 300,
      duration: 90,
      url: 'assets/hairglowing.png'),
  Service(
      title: "Plainting",
      price: 500,
      duration: 200,
      url: 'assets/plainting.png'),
  Service(title: "manicure", price: 700, duration: 40, url: 'assets/mani.png'),
];
