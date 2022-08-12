// ignore_for_file: public_member_api_docs, sort_constructors_first
class Travel {
  String? name;
  String? location;
  String? url;
  Travel({
    this.name,
    this.location,
    this.url,
  });
  static List<Travel> genarateCity() {
    return [
      Travel(name: "Sudan", location: "KASSALA", url: "images/k1.jpg"),
      Travel(name: "Sudan", location: "MARAWI", url: "images/m.jpg"),
      Travel(name: "Sudan", location: "PORTSUDAN", url: "images/port.jpg")
    ];
  }

  static List<Travel> genarateMostPopular() {
    return [
      Travel(name: "place1", location: "place1", url: "images/port.jpg"),
      Travel(name: "place2", location: "place2", url: "images/k1.jpg"),
      Travel(name: "place2", location: "place2", url: "images/m.jpg"),
      Travel(name: "place2", location: "place2", url: "images/port.jpg")
    ];
  }
}
