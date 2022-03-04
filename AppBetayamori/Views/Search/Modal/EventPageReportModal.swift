//
//  EventPageReportModal.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/11.
//

import SwiftUI


struct ShowingEventPageReportModal: View {
    @State private var showingEventPageReportModal: Bool = false
    
    var body: some View {
        
        Button(action:{self.showingEventPageReportModal.toggle()}) {
            Image(systemName: "line.3.horizontal")
                .foregroundColor(Color.black)
        }.sheet(isPresented: $showingEventPageReportModal) {
            EventPageReportModal()
        }
        
    }
}


struct EventPageReportModal: View {
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        NavigationView{
            Text("イベントページを報告する")
            
            
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }){
                            Image(systemName: "multiply")
                                .foregroundColor(Color.black)
                        }
                    }
                }
        }
    }
}

struct EventPageReportModal_Previews: PreviewProvider {
    static var previews: some View {
        EventPageReportModal()
    }
}
