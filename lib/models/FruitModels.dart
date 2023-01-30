// ignore_for_file: file_names

class FruitModels {
  final String path, title;
  final double views, prix;

  FruitModels(this.path, this.title, this.views, this.prix);

  static List<FruitModels> listfruits = [
    FruitModels("assets/orange.jpg", "Orange", 8.0, 200.00),
    FruitModels("assets/banane.jpg", "Banane", 6.5, 350.00),
    FruitModels("assets/kiwi.jpg", "Kiwi", 8.0, 600.00),
    FruitModels("assets/fraise.jpg", "Fraise", 3.0, 250.00),
    FruitModels("assets/mandarine.jpg", "Mandarine", 8.0, 250.00),
    FruitModels("assets/pèche.jpg", "Pèche", 8.0, 300.00),
  ];
}
