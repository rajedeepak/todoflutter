import 'package:cloud_firestore/cloud_firestore.dart' show DocumentReference, DocumentSnapshot;

class Record {
  final String name;
  final int votes;
  final DocumentReference reference;
  bool loading;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        votes = map['votes'],
        loading = false;

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";

  on() {
    this.loading = true;
  }

}