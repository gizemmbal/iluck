import 'package:flutter/material.dart';

class Giveaway {
  final String imageUrl, category1, description, category2, nick;
  final int id, like, comment;
  final Color color;
  Giveaway({
    required this.nick,
    required this.id,
    required this.imageUrl,
    required this.like,
    required this.comment,
    required this.category1,
    required this.category2,
    required this.color,
    required this.description,
  });
}

List<Giveaway> giveaways = [
  Giveaway(
    nick: "ylcnkyse",
    id: 0,
    like: 589455,
    comment: 50656,
    description: dummyText,
    category1: "Teknoloji",
    category2: "Oyun",
    imageUrl:
        "https://cdn.bynogame.com/images/29-ekim-575-vp-cekilisi-1635326273566.webp",
    color: Color.fromRGBO(249, 249, 249, 0.1),
  ),
  Giveaway(
      nick: "ylcnkyse",
      id: 1,
      like: 234,
      comment: 12,
      description: dummyText,
      category1: "Teknoloji",
      category2: "Ev Eşyası",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrg6_xhnUuDEW-KHl7oluNGms2nWRBPxvF3g&usqp=CAU",
      color: Colors.white54),
  Giveaway(
      nick: "ylcnkyse",
      id: 2,
      like: 234,
      comment: 12,
      description: dummyText,
      category1: "Ev Dekorasyonu",
      category2: "Takı",
      imageUrl:
          "https://static.wixstatic.com/media/9e574f_55dd0eeb0ac341e2854c4e4ddaebba3c~mv2.png/v1/fit/w_512%2Ch_512%2Cal_c/file.png",
      color: Colors.white54),
  Giveaway(
      nick: "ylcnkyse",
      id: 3,
      like: 234,
      comment: 12,
      description: dummyText,
      category1: "Giyim",
      category2: "Takı",
      imageUrl: "https://mavifm.com/wp-content/uploads/2020/05/New-Project.jpg",
      color: Colors.white54),
  Giveaway(
      nick: "ylcnkyse",
      id: 4,
      like: 234,
      comment: 12,
      description: dummyText,
      category1: "Ev Dekorasyonu",
      category2: "Takı",
      imageUrl:
          "https://i.pinimg.com/474x/5c/94/83/5c9483020ef6bb8a913c69229b3cef8d.jpg",
      color: Colors.white54),
  Giveaway(
    nick: "ylcnkyse",
    id: 5,
    like: 234,
    comment: 12,
    description: dummyText,
    category1: "Pet Shop",
    category2: "Yiyecek",
    imageUrl:
        "https://i.pinimg.com/originals/25/f6/7e/25f67ebc190c7c9106dd15fc9ca99920.jpg",
    color: Colors.white54,
  ),
];

String dummyText = """Kazanan 3 kişiye bi kutu örgü hediye ediyoruz.

İşte Yapman gerekenler;

🧶 @nakoiplikleri hesabını takip et,
🧶 Bu gönderiyi beğen,
🧶 Nako denince aklına ne geliyor? Tek kelime ile yorumlara yaz ve 3 arkadaşını etiketle,

Bi kutu örgü kazanma şansı yakala.

Çekilişe son katılım tarihi 2 Ekim Pazar.
Sonuçlar 3 Ekim Pazartesi günü hikayemizde açıklanacaktır, herkese bol şans. 🌸

Unutmayın, ne kadar yorum yaparsanız kazanma şansınız o kadar artar!

#nako #nakoiplikleri #örgüaşkı #çekiliş #bikutuörgü #hediye #çekilişvar #çekilişzamanı""";
