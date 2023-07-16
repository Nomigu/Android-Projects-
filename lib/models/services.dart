class Services {
  String imageUrl;
  String text;

  Services({
    required this.imageUrl,
    required this.text,
  });
}

class AnotherClass {
  String imageUrl;
  String? text;

  AnotherClass({
    required this.imageUrl,this.text,
  });
}


class SearchList {
  String imageUrl;
  String text;

  SearchList({
    required this.imageUrl,required this.text,
  });
}

List<Services> myServices = [
  Services(imageUrl: "assets/images/Paint.png", text: "Painting"),
  Services(imageUrl: "assets/images/logo animation.png", text: "Logo Animation"),
  Services(imageUrl: "assets/images/unsplash_VW2oU66mwbc.png", text: "Graphic"),
];

List<AnotherClass> myAnotherClass = [
  AnotherClass(imageUrl: "assets/images/pagview.png", text: ""),
  AnotherClass(imageUrl: "assets/images/pagview.png", text: ""),
];
List<SearchList> mySearchList = [
  SearchList(imageUrl: "assets/images/rating.png", text: "edit your videos professionally"),
  SearchList(imageUrl: "assets/images/camera.png", text: ""),
  SearchList(imageUrl: "assets/images/rating.png", text: ""),
  SearchList(imageUrl: "assets/images/camera.png", text: ""),
];