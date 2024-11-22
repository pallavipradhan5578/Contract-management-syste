import 'package:twentyoneassignment/models/participant.dart';
import 'package:twentyoneassignment/models/term.dart';

class Contract {
  String id;
  String name;
  List<Participant> participants;
  List<Term> terms;

  Contract(
      {required this.id,
      required this.name,
      this.participants = const [],
      this.terms = const []});
}
