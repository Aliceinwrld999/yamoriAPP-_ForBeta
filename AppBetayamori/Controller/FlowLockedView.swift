//
//  FlowLockedView.swift
//  YamoriApp#1 2022
//
//  Created by Takashi Shigeta on 2022/02/18.
//

import SwiftUI

struct FlowLockedView: View {
    @State var tagState:Bool = false
    @State var tapState: Bool = true
    @StateObject var model = FlowLayoutModel()
    let xSpace :CGFloat = 15
    let ySpace : CGFloat = 0
    
    let music = getMusic(tagArray: MyTagDataArray)
    let activity = getActivity()
    let comedy = getComedy()
    let animation = getAnimation()
    let stage = getStage()
    let art = getArt()
    let sports = getSports()
    let hobby = getHobby()
    let game = getGame()
    let entertainment = getEmtertainment()
    let place = getPlace()
    let food = getFood()
    let fashion = getFashion()
    let book = getBook()
    let comic = getComic()
    let movie = getMovie()
    
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading){
                if music.count == 0 {
                }else{
                    Text("音楽")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: music){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if activity.count == 0 {
                }else{
                    Text("アクティビティ")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: activity){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if comedy.count == 0 {
                }else{
                    Text("コメディ")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: comedy){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if movie.count == 0 {
                }else{
                    Text("映画")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: movie){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if animation.count == 0 {
                }else{
                    Text("アニメ")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: animation){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if art.count == 0 {
                }else{
                    Text("アート")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: art){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if sports.count == 0 {
                }else{
                    Text("スポーツ")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: sports){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if hobby.count == 0 {
                }else{
                    Text("趣味")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: hobby){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if game.count == 0 {
                }else{
                    Text("ゲーム")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: game){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
            }
            VStack(alignment: .leading){
                if entertainment.count == 0 {
                }else{
                    Text("エンターテイメント")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: entertainment){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if place.count == 0 {
                }else{
                    Text("スポット")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: place){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if food.count == 0 {
                }else{
                    Text("グルメ")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: food){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if fashion.count == 0 {
                }else{
                    Text("ファション")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: fashion){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if book.count == 0 {
                }else{
                    Text("本")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: book){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                
                if comic.count == 0 {
                }else{
                    Text("漫画・コミック")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    FlexibleView(data: comic){ item in
                        
                        TagLocked(tagState: true,color: model.tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
                //MARK: - ここまでVstack
            }
            
        }
    }
}

struct FlowLockedView_Previews: PreviewProvider {
    static var previews: some View {
        FlowLockedView()
    }
}
