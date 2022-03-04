//
//   PredictionWord.swift
//  YamoriApp#1 211217
//
//  Created by 高橋良汰 on 2021/12/25.
//

import SwiftUI

struct PredictionWord: View {
    
    private var predictionWordList = ["さよなライオン", "プリンセス天功", "川崎 史貴", ]
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text("候補")
                .font(.callout)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    
                    ForEach(0..<predictionWordList.count) {(row: Int) in
                        
                        NavigationLink(destination: SearchResultTop(searchWord: predictionWordList[row])){
                            Text(predictionWordList[row])
                                .font(.footnote)
                                .padding(EdgeInsets(top: 2, leading: 10, bottom: 2, trailing: 10 ))
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                        }
                        .foregroundColor(Color.black)
                    }
                    
                }
                .padding(.leading)
            }
        }
    }
}


struct _PredictionWord_Previews: PreviewProvider {
    static var previews: some View {
        PredictionWord()
    }
}
