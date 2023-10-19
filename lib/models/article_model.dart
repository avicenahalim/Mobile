import 'package:equatable/equatable.dart';

class Article extends Equatable{
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id, 
    required this.title, 
    required this.subtitle, 
    required this.body, 
    required this.author, 
    required this.authorImageUrl, 
    required this.category, 
    required this.imageUrl, 
    required this.views, 
    required this.createdAt, 
    });

    static List<Article> article = [
          Article(
      id: '1',
      title:
          'Inovasi Teknologi: Mengubah Cara Kita Hidup dan Bekerja',
      subtitle:
          'Teknologi telah menjadi pendorong utama perubahan dalam kehidupan manusia sepanjang sejarah.',
      body:
          'Teknologi telah menjadi pendorong utama perubahan dalam kehidupan manusia sepanjang sejarah. Namun, era digital yang kita nikmati saat ini memberikan lompatan besar dalam inovasi teknologi yang memengaruhi hampir setiap aspek kehidupan kita. Salah satu inovasi terkini yang menggemparkan dunia adalah Internet of Things (IoT). Dengan IoT, berbagai perangkat seperti lampu, kulkas, bahkan mobil dapat terhubung ke internet, memungkinkan kita untuk mengontrolnya dari jarak jauh melalui smartphone atau perangkat lainnya. Hal ini tidak hanya meningkatkan kenyamanan, tetapi juga mengoptimalkan efisiensi energi dan membantu kita dalam menjalani kehidupan yang lebih berkelanjutan. Selain IoT, kecerdasan buatan (Artificial Intelligence - AI) juga telah merevolusi berbagai industri. AI menggabungkan kemampuan komputer untuk belajar dan berpikir seperti manusia, yang membuatnya cocok untuk tugas-tugas kompleks seperti analisis data, pengenalan wajah, dan bahkan pengambilan keputusan di bidang medis. Inovasi ini telah mempercepat proses penelitian, meningkatkan efisiensi bisnis, dan menghadirkan solusi yang lebih canggih dalam berbagai sektor, mulai dari kesehatan hingga otomotif. Dengan terus berkembangnya teknologi, kita dapat dengan pasti mengharapkan inovasi lebih lanjut yang akan mengubah dunia yang kita kenal saat ini.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Inovasi',
      views: 1204,
      imageUrl:
          'https://images.unsplash.com/photo-1656106534627-0fef76c8b042?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          'Teknologi Internet: Menyatukan Dunia dalam Jaringan Global',
      subtitle:
          'Internet telah menjadi tulang punggung masyarakat modern dan salah satu inovasi teknologi terpenting dalam sejarah manusia.',
      body:
          'Internet telah menjadi tulang punggung masyarakat modern dan salah satu inovasi teknologi terpenting dalam sejarah manusia. Dengan miliaran pengguna di seluruh dunia, internet telah mengubah cara kita berkomunikasi, bekerja, dan hidup. Salah satu dampak terbesar adalah kemampuannya untuk menghubungkan orang dari berbagai belahan dunia. Informasi, ide, dan budaya dapat dengan mudah berpindah dari satu negara ke negara lain, membuka pintu untuk kolaborasi global yang tak terbatas. Teknologi internet juga telah memungkinkan pertumbuhan bisnis e-commerce yang pesat, memungkinkan kita untuk berbelanja dari mana saja dan kapan saja. Selain itu, teknologi internet terus berkembang dengan cepat. Jaringan 5G yang semakin meluas menawarkan kecepatan internet yang tak tertandingi, yang akan mengakselerasi perkembangan IoT (Internet of Things), kendaraan otonom, dan berbagai aplikasi canggih lainnya. Namun, sambil merayakan prestasi teknologi internet, kita juga harus mempertimbangkan tantangan yang muncul, seperti privasi data dan keamanan online. Mendorong penggunaan yang aman dan bertanggung jawab adalah tugas penting dalam menggabungkan teknologi internet ke dalam kehidupan kita yang semakin terhubung. Dengan terus berinovasi dan menjaga etika dalam penggunaannya, teknologi internet akan terus menjadi kekuatan positif dalam membentuk masa depan global kita.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Internet',
      views: 1204,
      imageUrl:
          'https://images.unsplash.com/photo-1574280363402-2f672940b871?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title:
          'Teknologi Gadget: Mengubah Cara Kita Hidup dan Berinteraksi',
      subtitle:
          'Gadget adalah bagian tak terpisahkan dari kehidupan modern kita. ',
      body:
          ' Dari smartphone canggih hingga tablet, laptop, dan perangkat wearable, inovasi gadget terus mengubah cara kita berkomunikasi, bekerja, dan bersenang-senang. Salah satu dampak terbesar dari perkembangan teknologi gadget adalah kemampuan kita untuk tetap terhubung dengan dunia di ujung jari kita. Smartphone, misalnya, bukan hanya alat telepon, tetapi juga menjadi pusat kendali untuk berbagai aktivitas, seperti pesan teks, email, media sosial, hingga berbelanja online. Mereka juga memiliki kemampuan kamera yang luar biasa, memungkinkan kita untuk mengabadikan momen berharga dengan kualitas yang mengagumkan. Selain itu, teknologi gadget juga telah memperkaya pengalaman hiburan kita. Tablet dan laptop memungkinkan kita untuk mengakses informasi dan konten multimedia dengan mudah, sementara perangkat wearable seperti smartwatch membantu kita untuk menjaga kesehatan dan kebugaran kita dengan pemantauan yang terus-menerus. Namun, seiring dengan semua manfaat ini, penting juga untuk mengenali tantangan yang muncul, seperti kecanduan gadget dan isu privasi. Kita harus menggunakan teknologi gadget ini dengan bijak, menjaga keseimbangan antara kebutuhan kita akan konektivitas dan ketenangan pikiran kita. Dengan demikian, teknologi gadget akan terus menjadi alat yang kuat dalam membentuk kehidupan kita yang modern.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Gadget',
      views: 1204,
      imageUrl:
          'https://images.unsplash.com/photo-1616832880334-b1004d9808da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Teknologi Keamanan: Melindungi Dunia Digital Kita',
      subtitle:
          'Di era digital yang semakin terhubung, teknologi keamanan menjadi sangat penting.',
      body:
          'Keamanan digital bukan lagi sekadar pilihan, melainkan kebutuhan yang mendesak dalam menjaga data pribadi, informasi bisnis, dan infrastruktur kritis terlindungi dari ancaman siber. Inovasi dalam teknologi keamanan telah menjadi penjaga pertahanan utama dalam melindungi dunia digital kita. Mulai dari perangkat lunak antivirus hingga firewall canggih, teknologi ini berperan penting dalam mendeteksi, mencegah, dan merespons serangan siber yang semakin canggih. Salah satu tren terbaru dalam teknologi keamanan adalah kecerdasan buatan (Artificial Intelligence - AI). AI digunakan untuk menganalisis pola data secara real-time, sehingga dapat mengidentifikasi ancaman siber dengan cepat dan akurat. Selain itu, teknologi blockchain juga muncul sebagai cara inovatif untuk melindungi data dan transaksi digital. Dengan terus mengembangkan teknologi keamanan ini, kita dapat memastikan bahwa dunia digital kita tetap aman dan dapat diandalkan, memungkinkan kita untuk menjalani kehidupan online yang produktif dan terlindungi.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Keamanan',
      views: 1204,
      imageUrl:
          'https://images.unsplash.com/photo-1653587416464-8a99cc74d192?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=974&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title:
          'Perangkat Teknologi: Membawa Inovasi ke Pintu Depan Kita',
      subtitle:
          'Teknologi perangkat adalah inti dari kehidupan modern kita, dan perkembangannya terus memperkaya pengalaman sehari-hari kita.',
      body:
          'Dari komputer pribadi hingga perangkat seluler, dan dari perangkat pintar hingga perangkat rumah tangga yang terhubung, perangkat teknologi telah mengubah cara kita berkomunikasi, bekerja, dan bersenang-senang. Laptop dan tablet memberikan mobilitas yang tak tertandingi, memungkinkan kita untuk bekerja dari hampir mana saja, sementara smartphone telah menggantikan sebagian besar perangkat lainnya dengan kemampuannya yang serbaguna. Selain itu, perangkat pintar seperti speaker cerdas dan perangkat rumah pintar lainnya membawa kenyamanan dan efisiensi ke dalam kehidupan sehari-hari kita, dengan kontrol mudah melalui suara atau aplikasi. Namun, seiring dengan semua kemudahan yang ditawarkan oleh teknologi perangkat, ada juga tantangan. Keamanan perangkat dan privasi pengguna menjadi perhatian utama, mengingat peningkatan risiko siber dan pelanggaran data. Oleh karena itu, penting untuk menjaga perangkat-perangkat ini tetap aman dan terlindungi dengan mengikuti praktik keamanan terbaik dan memperbarui perangkat secara berkala. Dengan terus berinovasi, teknologi perangkat akan terus memainkan peran sentral dalam membentuk masa depan teknologi, membawa solusi canggih untuk kebutuhan sehari-hari kita.',
      author: 'Anna G. Wright',
      authorImageUrl:
          'https://images.unsplash.com/photo-1658786403875-ef4086b78196?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      category: 'Politics',
      views: 1204,
      imageUrl:
          'https://images.unsplash.com/photo-1658330056737-0fd4bda0e4c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1351&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
      )
    ];

  @override
  List<Object> get props => [
    id,
    title,
    subtitle,
    body,
    author,
    authorImageUrl,
    category,
    imageUrl,
    createdAt,
  ];

}