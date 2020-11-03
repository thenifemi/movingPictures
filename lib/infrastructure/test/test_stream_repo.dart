import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/test/test_stream.dart';

@LazySingleton(as: TestStream)
class TestStreamRepo implements TestStream {
  final FirebaseFirestore _firestore;

  TestStreamRepo(this._firestore);

  @override
  Stream<String> testStream() async* {
    final testDoc = await _firestore.collection('test').doc(1.toString());

    yield* testDoc.snapshots().map((snapshot) => snapshot.data().toString());
  }
}
