class QuestionsClass {
 const  QuestionsClass(this.text , this.answers);
  
  final String text;
  final List<String> answers ;

  List<String> shuffledQUestions(){
  final questionCopy = List.of(answers);
    questionCopy.shuffle();
    return questionCopy ;
  }
}