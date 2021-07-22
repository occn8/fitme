class WorkOutModel {
  String? title, description, procedure, imgUrl;

  WorkOutModel({
    this.title,
    this.imgUrl,
    this.description,
    this.procedure,
  });
}

List<WorkOutModel> workouts = [
  WorkOutModel(
      title: 'The plank',
      description: 'works out the whole body',
      procedure: 'one two  two\n three',
      imgUrl: 'assets/images/img1.png'),
  WorkOutModel(
      title: 'The sit ups',
      description: 'works out the whole body',
      procedure: 'one two three',
      imgUrl: 'assets/images/img2.png'),
  WorkOutModel(
      title: 'The plank',
      description: 'works out the whole body',
      procedure: 'one two\n three',
      imgUrl: 'assets/images/img3.png'),
  WorkOutModel(
      title: 'The other',
      description: 'works out the whole body',
      procedure: 'one two three',
      imgUrl: 'assets/images/img4.png'),
  WorkOutModel(
      title: 'The next',
      description: 'works out the whole body',
      procedure: 'one two three',
      imgUrl: 'assets/images/img5.png'),
  WorkOutModel(
      title: 'The times',
      description: 'works out the whole body',
      procedure: 'one two three',
      imgUrl: 'assets/images/img2.png'),
];
