//
//  UserData.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/20.
//

import Foundation

struct UserDataModel: Identifiable {
    var id: String
    var userName: String
    var iconImage: String
    var profileDescription: String?
    var tags: [String]?
    var lockState: Bool
    var birthDay: String?
    var followUser: [String]?
    var followerUser: [String]?
    var followLock: Bool
    
}

var UserDataArray: [UserDataModel] = [
    UserDataModel(
        id: "ryota_310",
        userName: "高橋良汰",
        iconImage: "takahashiImage",
        profileDescription: "高橋ですが。",
        tags: ["乃木坂46","ポケモンGO"],
        lockState: false,
        birthDay: "1998/03/10",
        followUser: ["Alice1012", "yamori"],
        followerUser: ["Alice1012"],
        followLock: false
    ),
    UserDataModel(
        id: "Aliceinforex999",
        userName: "重田隆志",
        iconImage: "shigetaImage",
        profileDescription: "",
        tags: ["ダーツ", "二郎系", "家系", "エヴァンゲリオン", "ガーデニング", "アリスインワンダーランド", "ドレイク", "サウスパーク", "kaws", "さらば青春のh義狩"],
        lockState: true,
        birthDay: "1998/01/30",
        followUser: ["ryota_310"],
        followerUser: ["ryota_310"],
        followLock: true
    ),
    UserDataModel(
        id: "yamori",
        userName: "Yamori",
        iconImage: "YamoriImage",
        profileDescription: "窓フィルムのことなら僕にまかせんしゃい" ,
        tags: ["グラフィル", "SN50", "爆益", "サイバーレップス", "スキージー", "スクレーパー", "白ベラ", "噴霧器", "窓掃除"],
        lockState: true,
        birthDay: "2021/01/01",
        followUser: ["ryota_310", "Aliceinforex999"],
        followerUser: ["ryota_310", "Aliceinforex999"],
        followLock: true
    ),
    UserDataModel(id: "ryuuu",
                  userName: "ストロングバズーカ",
                  iconImage: "yoshidaImage",
                  profileDescription: "ストバズりゅう",
                  tags: ["メガネ", "ちりちり"],
                  lockState: false,
//                  birthDay: <#T##String?#>,
                  followUser: ["ryota_0310", "Aliceinforex999"],
                  followerUser: ["yamori"],
                  followLock: false
                 ),
//    UserDataModel(id: <#T##String#>,
//                  userName: <#T##String#>,
//                  iconImage: <#T##String?#>,
//                  profileDescription: <#T##String?#>,
//                  tags: <#T##[String]?#>,
//                  lockState: <#T##Bool#>,
//                  birthDay: <#T##String?#>,
//                  followUser: <#T##[String]?#>,
//                  followerUser: <#T##[String]?#>,
//                  followLock: false
//                 ),
    
    
    
]
