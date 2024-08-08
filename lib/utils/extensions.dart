extension Images on String {
  String toPNG() {
    return 'assets/images/$this.png';
  }

  String toSVG() {
    return 'assets/images/svg/$this.svg';
  }

  String toJPG() {
    return 'assets/images/$this.jpg';
  }
}
