//
//  commentHalfModal.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/13.
//

import SwiftUI
import AudioToolbox

struct CommentHalfModal: View {
    
    @State var commentCount = 20
    
    @State var commenttext: String = ""
    
    
    
    var body: some View {
        VStack{
            HStack{
                Text("コメント　\(commentCount)")
                Spacer()
            }
            
            VStack{
                Text("優しい気持ちでコメントしましょう！")
            }
            ScrollView{
                ForEach(0..<40) {(row: Int) in
                    commentItem()
                }
            }
        }
//        .toolbar {
//            ToolbarItem(placement: .bottomBar) {
//                HStack{
//                    TextField("ダメなコメントはアカウント停止の可能性があります", text: $commenttext)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .multilineTextAlignment(.leading)
//
//                    Button {
//                        commenttext = ""
//                    } label: {
//                        Label("送信", systemImage: "paperplane")
//                    }
//                }
//            }
//        }
    }
}

struct commentItem: View{
    
    let generator = UINotificationFeedbackGenerator()
    
    var replyCount = 5
    
    @State private var commentValueGood = false
    @State private var commentValueBad = false
    @State private var commentAlertState = ""
    @State var commentReplyState: Bool = false
    
    var btn = Button(action: {}){
        Text("ひkなsd")
    }
    
    var replyText = ".返信でーすでーす。いっぱい書くよー何文字まで書けるようにしようかなどうしましょうね"
    
    
    var body: some View{
        
        
        
        let goodGesture = TapGesture(count:2)
            .onEnded{
                commentValueGood = true
                commentValueBad = false
                self.generator.notificationOccurred(.success)
                
            }
        
    
        
        VStack{
            VStack{
                Divider()
                HStack(alignment: .top){
                    UserCircleIcon()
                        .frame(width: 30, height: 30)
                    VStack(alignment: .leading){
                        Text("ユーザーの名前")
                            .font(.callout)
                            .fontWeight(.bold)
                        Text("@abcdefg")
                            .font(.footnote)
                    }
                    Text("3分前")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                    Spacer()
                    
                    //                Picker(selection: $commentAlertState, label: Image(systemName: "bell"), content:{
                    //                    Text("通報").tag("alert")
                    //                    Text("キャンセル").tag("alert")
                    //                })
                    
                    Button(action: {}){
                        
                    }
                    
                    
                }
                .padding(.horizontal)
                Text("わーいわーい。コメントだあぁなぁ笑")
                    .font(.callout)
                
                HStack{
                    Spacer()
                    Button(action: {
                        self.commentValueGood.toggle()
                        if commentValueGood == true {
                            commentValueBad = false
                            self.generator.notificationOccurred(.success)
                        }
                        
                    }){
                        Image(systemName: commentValueGood ? "hand.thumbsup.fill" : "hand.thumbsup")
                    }
                    
                    Button(action: {
                        self.commentValueBad.toggle()
                        if commentValueBad == true {
                            commentValueGood = false
                            self.generator.notificationOccurred(.error)
                        }
                    }){
                        Image(systemName: commentValueBad ? "hand.thumbsdown.fill" :  "hand.thumbsdown")
                    }
                    .padding(.horizontal)
                    
                }
                Button(action: {self.commentReplyState.toggle()}){
                    if commentReplyState {
                        Text("返信を非表示にする")
                            .foregroundColor(Color.gray)
                            .fontWeight(.bold)
                            .font(.footnote)
                    } else {
                        Text("\(replyCount)件の返信を見る")
                            .foregroundColor(Color.gray)
                            .fontWeight(.bold)
                            .font(.footnote)
                    }
                }
            }
            .gesture(goodGesture)
            
            
            if commentReplyState {
                ForEach(0..<5) {(row: Int) in
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            UserCircleIcon()
                                .frame(width: 25, height: 25)
                            VStack(alignment: .leading){
                                Text("ユーザーの名前")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                Text("@abcdefg")
                                    .font(.caption)
                                
                            }
                            
                            Text("3分前")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                            Spacer()
                            //
                            //                            Picker(selection: $commentAlertState, label: Image(systemName: "bell"), content:{
                            //                                Text("通報").tag("alert")
                            //                                Text("キャンセル").tag("alert")
                            //                            })
                            
                        }
                        Text(replyText).lineLimit(nil)
                            .padding(.leading, 30)
                    }
                    .padding(.horizontal)
                    .padding(.leading, 30)
                }
            }
        }
    }
    
}

struct CommentHalfModal_Previews: PreviewProvider {
    static var previews: some View {
        CommentHalfModal()
    }
}
