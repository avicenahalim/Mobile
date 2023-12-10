import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference news =
      FirebaseFirestore.instance.collection('news');

  Stream<QuerySnapshot> getNews() {
    final newsStream = news.snapshots();
    return newsStream;
  }

  Stream<QuerySnapshot> getDiscoverNewsByCategory(String category) {
    return news
        .where('category', isEqualTo: category)
        .snapshots();
  }

  Future<Map<String, dynamic>?> getArticleById(String id) async {
  try {
    final QuerySnapshot querySnapshot = await news
        .where('id', isEqualTo: id)
        .limit(1)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      final data = querySnapshot.docs.first.data() as Map<String, dynamic>;
      data['id'] = querySnapshot.docs.first.id;
      return data;
    } else {
      return null;
    }
  } catch (e) {
    print('Error getting article by ID: $e');
    return null;
  }
  }
  Stream<QuerySnapshot> getNewsNew({String? searchQuery}) {
  Query newsQuery = news;

  if (searchQuery != null && searchQuery.isNotEmpty) {
    newsQuery = newsQuery.where('title', isGreaterThanOrEqualTo: searchQuery);
  }

  final newsStream = newsQuery.snapshots();
  return newsStream;
}
}
  // Future<void> addFruit(String gambar, String nama, String nama_ilmiah) async {
  //   fruits.add({'gambar': gambar, 'nama': nama, 'nama_ilmiah' : nama_ilmiah});
  // }

  // Future<void> updateFruit(String id,String gambar, String nama, String nama_ilmiah) async {
  //   fruits.doc(id).update({'gambar': gambar, 'nama': nama, 'nama_ilmiah' : nama_ilmiah});
  // }

  // Future<void> deleteCat(String id) async {
  //  fruits.doc(id).delete();
  // }
