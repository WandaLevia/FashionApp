class Category {
  final String images;
  final String name;
  final String description;

  Category({
    required this.images,
    required this.name,
    required this.description,
  });
}

var categories = [
  Category(
    images: "assets/image/fashion1.jpg",
    name: "Pakaian Pria",
    description: "Kategori: Atasan, Celana, Jaket, dan Pakaian Dalam",
  ),
  Category(
    images: "assets/image/fashion2.jpg",
    name: "Pakaian Wanita",
    description: "Kategori: Blouse, Rok, Gaun, dan Lingerie",
  ),
  Category(
    images: "assets/image/fashion3.jpg",
    name: "Pakaian Anak",
    description: "Kategori: Baju Anak, Celana Anak, dan Aksesoris Anak",
  ),
  Category(
    images: "assets/image/fashion4.jpg",
    name: "Sepatu",
    description: "Kategori: Sepatu Pria, Sepatu Wanita, dan Sepatu Anak",
  ),
  Category(
    images: "assets/image/fashion5.jpg",
    name: "Tas",
    description: "Kategori: Tas Tangan, Tas Ransel, dan Tas Selempang",
  ),
  Category(
    images: "assets/image/fashion6.jpg",
    name: "Aksesoris",
    description: "Kategori: Kalung, Gelang, Cincin, dan Topi",
  ),
];
