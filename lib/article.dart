class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentsCount;

  Article(this.text, this.domain, this.by, this.age, this.score,
      this.commentsCount);
}

List<Article> articles = [
  Article('The file will have its original line', 'google.com', 'asad', '24',
      76, 89),
  Article('One of the best practices line', 'google.com', 'asad', '24', 76, 89),
  Article('The file will have its original line', 'google.com', 'asad', '24',
      76, 89),
  Article(
      'start a small series of different', 'google.com', 'asad', '24', 76, 89),
  Article('posts where we talk about', 'google.com', 'asad', '24', 76, 89),
  Article('The file will have its original line', 'google.com', 'asad', '24',
      76, 89),
  Article('start with the very first one', 'google.com', 'asad', '24', 76, 89),
  Article(
      'There is always a need to learn', 'google.com', 'asad', '24', 76, 89),
  Article('be able to learn faster and', 'google.com', 'asad', '24', 76, 89),
  Article('The file will have its original line', 'google.com', 'asad', '24',
      76, 89),
  Article('delighted with the tool and ', 'google.com', 'asad', '24', 76, 89),
  Article('that happens to probably ', 'google.com', 'asad', '24', 76, 89),
];
