//
//  EventDemoData.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/21.
//

import Foundation

struct EventDataModel: Identifiable {
    var id: String
    var time: String?
    var title: String
    var price: Int?
    var image: String?
}

var EventDemoDataArray: [EventDataModel] = [
    EventDataModel(id:"tokyo", time: "", title: "東京ゲームショー2021", price: 0, image: "TokyoGameShow"),
    EventDataModel(id:"mappa", time: "", title: "MAPPA SHOWCASE 10TH ", price: 1500,  image: "mappa"),
    EventDataModel(id:"syun", time: "", title: "春夏秋冬/フォーシーズンズ乃木坂46", price: 1800,  image: "NogizakaFourSeasons"),
    EventDataModel(id:"mythos", time: "", title: "Mythos Opus Pt. 2", price: 0, image: "Mythos"),
    EventDataModel(id:"ari", time: "11:00 ~ 20:00", title: "有吉クイズ写真展", price: 500,  image: "Ariyoshi"),
    EventDataModel(id:"tokyo", time: "", title: "東京ゲームショー2021", price: 0, image: "TokyoGameShow"),
    EventDataModel(id:"mappa", time: "", title: "MAPPA SHOWCASE 10TH ", price: 1500,  image: "mappa"),
    EventDataModel(id:"syun", time: "", title: "春夏秋冬/フォーシーズンズ乃木坂46", price: 1800,  image: "NogizakaFourSeasons"),
    EventDataModel(id:"mythos", time: "", title: "Mythos Opus Pt. 2", price: 0, image: "Mythos"),
    EventDataModel(id:"ari", time: "11:00 ~ 20:00", title: "有吉クイズ写真展", price: 500,  image: "Ariyoshi"),
    EventDataModel(id:"tokyo", time: "", title: "東京ゲームショー2021", price: 0, image: "TokyoGameShow"),
    EventDataModel(id:"mappa", time: "", title: "MAPPA SHOWCASE 10TH ", price: 1500,  image: "mappa"),
    EventDataModel(id:"syun", time: "", title: "春夏秋冬/フォーシーズンズ乃木坂46", price: 1800,  image: "NogizakaFourSeasons"),
    EventDataModel(id:"mythos", time: "", title: "Mythos Opus Pt. 2", price: 0, image: "Mythos"),
    EventDataModel(id:"ari", time: "11:00 ~ 20:00", title: "有吉クイズ写真展", price: 500,  image: "Ariyoshi")
]


