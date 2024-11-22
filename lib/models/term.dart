enum TermStatus { pending, underDiscussion, locked, rejected }

class Term {
  String id;
  String text;
  TermStatus status;
  Map<String, bool> responses; // Key: Participant ID, Value: Like (true) or Dislike (false)

  Term({required this.id, required this.text, this.status = TermStatus.pending, this.responses = const {}});
}
