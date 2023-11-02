//contain Question blue print
class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text; // QUESTIONS
  final List<String> answer; //LIST OF ANSWER (first option is always correct)

  List<String> getShuffleAnswer() {
    final shuffledList =
        List.of(answer); //we have to copy list of answer before shuffle them
    shuffledList.shuffle();
    return shuffledList;
  }
}
