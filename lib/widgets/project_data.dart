class ProjectData {
  final List<String> images;
  final String language;
  final String title;
  final String values;
  final List<MyLink> links;


  const ProjectData({
    required this.images,
    required this.links,
    required this.title,
    required this.language,
    // required this.headTitle,
    required this.values,
  });
}

class MyLink {
  final String link;
  final String? text;
  final LinkType type;
  const MyLink({required this.type,required this.link,this.text});
}
enum LinkType {
  behance,
  googlePlay,
  appStore,

}