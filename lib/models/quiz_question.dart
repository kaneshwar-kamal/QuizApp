class BluePrintQuizQuestions {
  const BluePrintQuizQuestions(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffeledList = List.of(answers);
      shuffeledList.shuffle();
      return shuffeledList;
    }
  }