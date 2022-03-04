//
//  FlowDeleteView.swift
//  YamoriApp#1 2022
//
//  Created by Takashi Shigeta on 2022/01/27.
//

import SwiftUI
import UIKit

struct FlowDeleteView: View {
    @State var tagState:Bool = false
    @State var tapState: Bool = true
    @StateObject var model = FlowLayoutModel()
    let xSpace :CGFloat = 15
    let ySpace : CGFloat = 0
    
    @State var music = getMusic(tagArray: MyTagDataArray)
    @State var activity = getActivity()
    @State var comedy = getComedy()
    @State var animation = getAnimation()
    @State var stage = getStage()
    @State var art = getArt()
    @State var sports = getSports()
    @State var hobby = getHobby()
    @State var game = getGame()
    @State var entertainment = getEmtertainment()
    @State var place = getPlace()
    @State var food = getFood()
    @State var fashion = getFashion()
    @State var book = getBook()
    @State var comic = getComic()
    @State var movie = getMovie()
    
    @State var mytag = MyTagDataArray
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                if music.count == 0 {
                }else{
                    Text("音楽")
                        .offset(x: CGFloat(xSpace), y: CGFloat(ySpace))
                    
                    FlexibleView(data: music){ item in
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = music.firstIndex(where: {$0.name == item.name}) {
                                music.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = activity.firstIndex(where: {$0.name == item.name}) {
                                activity.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                        }
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = comedy.firstIndex(where: {$0.name == item.name}) {
                                comedy.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = movie.firstIndex(where: {$0.name == item.name}) {
                                movie.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = animation.firstIndex(where: {$0.name == item.name}) {
                                animation.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = art.firstIndex(where: {$0.name == item.name}) {
                                art.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = sports.firstIndex(where: {$0.name == item.name}) {
                                sports.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = hobby.firstIndex(where: {$0.name == item.name}) {
                                hobby.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = game.firstIndex(where: {$0.name == item.name}) {
                                game.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = entertainment.firstIndex(where: {$0.name == item.name}) {
                                entertainment.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = place.firstIndex(where: {$0.name == item.name}) {
                                place.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = food.firstIndex(where: {$0.name == item.name}) {
                                food.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = fashion.firstIndex(where: {$0.name == item.name}) {
                                fashion.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = book.firstIndex(where: {$0.name == item.name}) {
                                book.remove(at: index)
                            }
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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
                        Button {
                            if let index:Int = MyTagDataArray.firstIndex(where: {$0.name == item.name}) {
                                MyTagDataArray.remove(at: index)
                                }
                            if let index:Int = comic.firstIndex(where: {$0.name == item.name}) {
                                comic.remove(at: index)
                                }

                            
                        } label: {
                            TagDelete(tagState: false,color: tagCategoryList[item.parent] ?? .gray, text: item.name, size: .title3)
                            
                        }
                        
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

struct FlowDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        FlowDeleteView()
    }
}
