class Discount {
  final String images;
  final String name;
  final String rating;
  final String pembelian;
  final String jarak;
  final String waktu;

  Discount({
    required this.images,
    required this.name,
    required this.rating,
    required this.pembelian,
    required this.jarak,
    required this.waktu,
  });
}

var ListDiscount = [
  Discount(
    images: "assets/image/discount1.jpg",
    name: "ZARA - Discount 10%",
    rating: "4.8",
    pembelian: "12k",
    jarak: "2.1 km",
    waktu: "30 menit",
  ),
  Discount(
    images: "assets/image/discount2.jpg",
    name: "UNIQLO - Discount 50%",
    rating: "4.9",
    pembelian: "10k",
    jarak: "1.2 km",
    waktu: "20 menit",
  ),
  Discount(
    images: "assets/image/discount3.jpg",
    name: "CHANNEL - Discount 60%",
    rating: "5",
    pembelian: "18k",
    jarak: "2.9 km",
    waktu: "40 menit",
  ),
];
