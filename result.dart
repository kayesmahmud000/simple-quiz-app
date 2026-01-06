class Result {
  final int total;
  final int correct;

  Result(this.total, this.correct);

  @override
 String toString() {
   return 'Score: $correct / $total ';
  }
}
