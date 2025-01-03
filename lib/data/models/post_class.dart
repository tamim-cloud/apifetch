class PostClass {
    PostClass({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    final int? userId;
    final int? id;
    final String? title;
    final String? body;

    PostClass copyWith({
        int? userId,
        int? id,
        String? title,
        String? body,
    }) {
        return PostClass(
            userId: userId ?? this.userId,
            id: id ?? this.id,
            title: title ?? this.title,
            body: body ?? this.body,
        );
    }

    factory PostClass.fromJson(Map<String, dynamic> json){ 
        return PostClass(
            userId: json["userId"],
            id: json["id"],
            title: json["title"],
            body: json["body"],
        );
    }

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };

    @override
    String toString(){
        return "$userId, $id, $title, $body, ";
    }
}
