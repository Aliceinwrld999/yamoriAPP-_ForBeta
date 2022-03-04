//
//  TagListModel.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2022/01/05.
//

import Foundation
import SwiftUI

var music = (state: false, name: "音楽")
var activity = (state: false, name: "アクティビティ")
var comedy = (state: false, name: "お笑い")
var movie = (state: false, name: "映画")
var stage = (state: false, name: "演劇")
var art = (state: false, name: "芸術")
var sports = (state: false, name: "スポーツ")
var hobby = (state: false, name: "趣味")
var game = (state: false, name: "ゲーム")
var entertainment = (state: false, name: "エンターテイメント")
var spot = (state: false, name: "スポット")
var food = (state: false, name: "食べ物")
var fashion = (state: false, name: "ファッション")
var book = (state: false, name: "本")
var comic = (state: false, name: "漫画")


let tagCategolyList: [String : Color] = [
    
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
