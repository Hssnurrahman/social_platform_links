import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'whatsapp_group_link.dart';

class WhatsAppGroupLinkList extends ChangeNotifier {
  List<WhatsAppGroupLink> _whatsAppGroupLinks = [
//    Cricket Groups
    WhatsAppGroupLink(
      groupName: "Cricket Updates",
      groupLink: "https://chat.whatsapp.com/IO2tOOaUiGLEl2sosQnHO2",
      category: "c1",
    ),
    //    Islamic Groups
    WhatsAppGroupLink(
      groupName: "Aqeedah Khatam e Nabawut",
      groupLink: "https://chat.whatsapp.com/FYcAqWRkxThBvgtQGgRxed",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Bachoun Ki Tarbiyat 2",
      groupLink: "https://chat.whatsapp.com/Fq62KqyGMrVG5ap4vDcX7d",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Daily Quran o Hadees",
      groupLink: "https://chat.whatsapp.com/DMinoSNFjmrE6dxbCKf250",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Dars Maulana Makki 3",
      groupLink: "https://chat.whatsapp.com/LvUnppkZLwY5GgOk9T9o6f",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Dawat o Tableegh 3",
      groupLink: "https://chat.whatsapp.com/EsAXMUVlAZuKKfn5yAA3AS",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Ehl e Ilm 1",
      groupLink: "https://chat.whatsapp.com/L3eRCfE05Cc8bTYajw2QpI",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Ehl e Ilm 2",
      groupLink: "https://chat.whatsapp.com/DJkdw3mO9Hz912ibXXkTEi",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Haji Abdul Wahab R.A.",
      groupLink: "https://chat.whatsapp.com/Kb58qo5DsCuE7Zs7mYoS6y",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Hiyya Al Falah",
      groupLink: "https://chat.whatsapp.com/ES7bClOr8GlHtjsBhxJxoH",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Islamic Group",
      groupLink: "https://chat.whatsapp.com/D19ODVf5BvtCELbRTfPQx5",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Khatam e Nabawut Zindabad",
      groupLink: "https://chat.whatsapp.com/FH4JVvnp6beBRCqJikU5Wm",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Mudrissah Budrul Aloom Ghonki",
      groupLink: "https://chat.whatsapp.com/Lf3ZcDY54YkCIunLOAIsWc",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Mufti Abdul Wahid Quraishi G48",
      groupLink: "https://chat.whatsapp.com/DLYmxtfuosLDUCxHfqpFgK",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Mufti Tariq Masood Sahib",
      groupLink: "https://chat.whatsapp.com/EUifPOTbI8RL1oWot0zD7i",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Mufti Tariq Masood Sahib 2",
      groupLink: "https://chat.whatsapp.com/IxIt8VbyPwTGBGBIXRqAno",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Muhammad Saqib Raza Mustafai Sahab",
      groupLink: "https://chat.whatsapp.com/LT8wUYo9AtD0NZrlT7LmOs",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Mustafai Bayanat",
      groupLink: "https://chat.whatsapp.com/LlL9X4WQNmWBEvCTqgq8zt",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Peer Muhammad Ajmal Razza Qadri 16",
      groupLink: "https://chat.whatsapp.com/FC0w1G3eZul90544cyOzAs",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Peer Muhammad Ajmal Razza Qadri 17",
      groupLink: "https://chat.whatsapp.com/Jnpi9BtDNOgJMO9cM5mMNV",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Peer Muhammad Ajmal Razza Qadri 18",
      groupLink: "https://chat.whatsapp.com/LjHEhVJAhtkLM17q8etvUD",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Peer Muhammad Ajmal Razza Qadri 112",
      groupLink: "https://chat.whatsapp.com/IEaS6xxsl5fDcVuNIpjDf5",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Qeemti Irshaadat 2",
      groupLink: "https://chat.whatsapp.com/Fy3l5T5745GCU4a82Q0OZQ",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Quran For All 1",
      groupLink: "https://chat.whatsapp.com/FrWjvdVjYYK3epQXfCMawn",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Qari Sohaib Ahmed Sahib",
      groupLink: "https://chat.whatsapp.com/HyID021WaJI6Kn3KMjeAmN",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Status Quran Majeed Ki Tilawat",
      groupLink: "https://chat.whatsapp.com/Jt7xrUDGyX2CQXQeSw7LqF",
      category: "c2",
    ),
    WhatsAppGroupLink(
      groupName: "Tarateel Qurania",
      groupLink: "https://chat.whatsapp.com/L3eRCfE05Cc8bTYajw2QpI",
      category: "c2",
    ),
  ];

  List<WhatsAppGroupLink> get whatsAppGroupLinks {
    return [..._whatsAppGroupLinks];
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
