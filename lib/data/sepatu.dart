class Sepatu {
  final String image;
  final String name;
  final String penjelasan;

  Sepatu({
    required this.image,
    required this.name,
    required this.penjelasan,
  });
}

var ListSepatu = [
  Sepatu(
    image: 'assets/image/details1.jpg',
    name: 'Sneakers',
    penjelasan:
        'Sneakers adalah sepatu yang sangat nyaman dan serbaguna. Mereka dirancang untuk aktivitas sehari-hari dan sering digunakan untuk berjalan-jalan, berolahraga ringan, atau tampil kasual. Sneakers memiliki berbagai desain dan gaya yang membuat mereka menjadi pilihan populer di kalangan semua usia. Mereka memiliki sol yang nyaman dan sering terbuat dari bahan seperti kanvas atau kulit sintetis.',
  ),
  Sepatu(
    image: 'assets/image/details2.jpg',
    name: 'Sepatu Lari',
    penjelasan:
        'Sepatu lari adalah sepatu khusus yang dirancang untuk aktivitas lari. Mereka memiliki teknologi yang mendukung kenyamanan dan kinerja saat berlari. Sepatu lari sering memiliki bantalan yang baik untuk meredakan tekanan pada kaki selama berlari. Mereka memiliki sol yang ringan dan fleksibel untuk memungkinkan gerakan kaki yang alami.',
  ),
  Sepatu(
    image: 'assets/image/details3.jpg',
    name: 'Boots',
    penjelasan:
        'Boots adalah sepatu yang cenderung lebih tinggi dan melindungi kaki serta pergelangan kaki. Mereka cocok untuk berbagai cuaca dan kondisi, termasuk musim dingin. Terdapat berbagai jenis boot, termasuk sepatu kerja, sepatu hiking, sepatu militer, dan sepatu kasual. Boots memiliki beragam desain yang mencakup mulai dari yang kasual hingga yang formal.',
  ),
  Sepatu(
    image: 'assets/image/details4.jpg',
    name: 'Loafers',
    penjelasan:
        'Loafers adalah sepatu slip-on yang nyaman dan sering digunakan untuk gaya kasual atau semi-formal. Mereka tidak memiliki tali atau resleting, sehingga mudah dipakai. Loafers biasanya terbuat dari kulit atau bahan sintetis. Mereka sangat cocok untuk pakaian santai, tetapi beberapa versi yang lebih mewah juga cocok untuk acara formal.',
  ),
  Sepatu(
    image: 'assets/image/details5.jpg',
    name: 'Sandal',
    penjelasan:
        'Sandal adalah sepatu terbuka yang cocok untuk cuaca hangat atau aktivitas santai. Mereka memiliki sol yang tipis atau tali yang melekat ke kaki. Sandal sangat nyaman dan umumnya digunakan di musim panas. Mereka cocok untuk jalan-jalan di pantai, berbelanja, atau hanya bersantai di rumah.',
  ),
];
