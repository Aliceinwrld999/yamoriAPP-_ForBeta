//
//  UserData.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/20.
//

import Foundation
import SwiftUI

struct TagDataModel: Identifiable,Hashable {
    var id: String
    var name: String
    var parent: String
    
}

var OtherTagDataArray : [TagDataModel] = [
    TagDataModel(id: "nogi", name: "乃木坂46", parent: "music"),
    TagDataModel(id: "puri", name: "プリンセス天功", parent: "entertainment"),
    TagDataModel(id: "ziro", name: "二郎系", parent: "food"),
    TagDataModel(id: "asa", name: "朝マック", parent: "food"),
    TagDataModel(id: "kara", name: "カラオケ", parent: "hobby"),
    TagDataModel(id: "sara", name: "さらば青春の光", parent: "comedy"),
    TagDataModel(id: "kitto", name: "きっとうまくいく", parent: "movie"),
    TagDataModel(id: "harry", name: "ハリーポッター", parent: "fashion"),
    TagDataModel(id: "sau", name: "サウナ", parent: "hobby"),
    TagDataModel(id: "shin", name: "進撃の巨人", parent: "animation"),
    TagDataModel(id: "dai", name: "大乱闘スマッシュブラザーズ", parent: "game"),
    TagDataModel(id: "suno", name: "スノボー", parent: "activity"),
    TagDataModel(id: "sake", name: "日本酒", parent: "food"),
    TagDataModel(id: "hiphop", name: "JPtheWavy", parent: "music"),
    TagDataModel(id: "ysl", name: "サンローラン", parent: "fashion"),
    TagDataModel(id: "beats", name: "ドクタードレ", parent: "music"),
    TagDataModel(id: "zone", name: "エナジードリンク", parent: "food"),
    TagDataModel(id: "tenichi", name: "天下一品", parent: "fashion"),
    TagDataModel(id: "iekei", name: "家系ラーメン", parent: "food"),
    TagDataModel(id: "rolling", name: "ローリングストーンズ", parent: "music"),
    TagDataModel(id: "doraemon", name: "ドラえもん", parent: "animation"),
    TagDataModel(id: "shinchan", name: "クレヨンしんちゃん", parent: "animation"),
    TagDataModel(id: "sakuke", name: "サスケ", parent: "game"),
    TagDataModel(id: "disney", name: "ディズニー", parent: "entertainment")

]

var MyTagDataArray: [TagDataModel] = [
    TagDataModel(id: "nogi", name: "乃木坂46", parent: "music"),
    TagDataModel(id: "puri", name: "ジョイポリス", parent: "entertainment"),
    TagDataModel(id: "ziro", name: "バンクシー", parent: "art"),
    TagDataModel(id: "asa", name: "朝マック", parent: "food"),
    TagDataModel(id: "kara", name: "ダーツ", parent: "hobby"),
    TagDataModel(id: "sara", name: "さらば青春の光", parent: "comedy"),
    TagDataModel(id: "kitto", name: "きっとうまくいく", parent: "movie"),
    TagDataModel(id: "harry", name: "ハリーポッター", parent: "movie"),
    TagDataModel(id: "sau", name: "テニス", parent: "sports"),
    TagDataModel(id: "shin", name: "NARUTO", parent: "animation"),
    TagDataModel(id: "dai", name: "フォートナイト", parent: "game"),
    TagDataModel(id: "suno", name: "スノボー", parent: "activity"),
    TagDataModel(id: "sake", name: "野球", parent: "sports"),
    TagDataModel(id: "hiphop", name: "五等分の花嫁", parent: "comic"),
    TagDataModel(id: "ysl", name: "ルイヴィトン", parent: "fashion"),
    TagDataModel(id: "beats", name: "ラクロス", parent: "sports"),
    TagDataModel(id: "beats", name: "バトミントン", parent: "sports"),
    TagDataModel(id: "beats", name: "卓球", parent: "sports"),
    TagDataModel(id: "beats", name: "サッカー", parent: "sports"),
    TagDataModel(id: "zone", name: "金剛苑", parent: "food"),
    TagDataModel(id: "tenichi", name: "村上隆", parent: "art"),
    TagDataModel(id: "iekei", name: "７つの大罪", parent: "comic"),
    TagDataModel(id: "rolling", name: "桑田佳祐", parent: "music"),
    TagDataModel(id: "doraemon", name: "モネ", parent: "art"),
    TagDataModel(id: "shinchan", name: "あたしんち", parent: "animation"),
    TagDataModel(id: "sakuke", name: "コールオブデューティ", parent: "game"),
    TagDataModel(id: "disney", name: "USJ", parent: "entertainment")
    
]
var tagCategoryList : [String : Color] = [

    "music" : Color(red: 1.0, green: 0.54, blue: 0.25) ,
    "activity" : Color(red: 0.53, green: 0.23, blue: 0.24),
    "comedy" : Color(red: 0.53, green: 0.29, blue: 0.18),
    "movie" : Color(red: 0.54, green: 0.17, blue: 0.28),
    "animation" : Color(red: 0.54, green: 0.44, blue: 0.01),
    "stage" : Color(red: 0.18, green: 0.33, blue: 0.48),
    "art" : Color(red: 0.35, green: 0.21, blue: 0.42),
    "sports" : Color(red: 0.07, green: 0.31, blue: 0.61),
    "hobby" : Color(red: 0.37, green: 0.50, blue: 0.12),
    "game" : Color(red: 0.20, green: 0.36, blue: 0.43),
    "entertainment" : Color(red: 0.39, green: 0.22, blue: 0.38),
    "place" : Color(red: 0.44, green: 0.78, blue: 0.73),
    "food" : Color(red: 0.76, green: 0.70, blue: 0.56),
    "fashion" : Color(red: 0.56, green: 0.66, blue: 0.87),
    "book" : Color(red: 0.36, green: 0.33, blue: 0.39),
    "comic" : Color(red: 0.55, green: 0.59, blue: 0.62)
]
