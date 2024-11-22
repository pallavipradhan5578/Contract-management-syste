import '../models/term.dart';

class TermController {
  void updateTermStatus(Term term, Map<String, bool> responses) {
    term.responses = responses;
    if (responses.containsValue(false)) {
      term.status = TermStatus.rejected;
    } else if (responses.length == term.responses.keys.length) {
      term.status = TermStatus.locked;
    } else {
      term.status = TermStatus.underDiscussion;
    }
  }
}
