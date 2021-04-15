class Subject {
  int id;
  String name;
  int isActive;
  String type;
  String level;
  String sections;
  String createdAt;
  String updatedAt;

  Subject(
      {this.id,
      this.name,
      this.isActive,
      this.type,
      this.level,
      this.sections,
      this.createdAt,
      this.updatedAt});

  Subject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isActive = json['is_active'];
    type = json['type'];
    level = json['level'];
    sections = json['sections'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['is_active'] = this.isActive;
    data['type'] = this.type;
    data['level'] = this.level;
    data['sections'] = this.sections;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}