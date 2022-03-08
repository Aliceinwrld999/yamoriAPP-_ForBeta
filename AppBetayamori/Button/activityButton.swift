//
//  activityButton.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/27.
//

import SwiftUI

struct activityButton: View {
    
    
    @State private var showActivityView: Bool = false
    
    var body: some View {
        Button(action: {
            self.showActivityView = true
        }){
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .scaledToFill()
                .frame(width: 25, height: 25)
                .foregroundColor(.black)
            
        }.sheet(isPresented: self.$showActivityView) {
            ActivityView(
                activityItems: ["https://yamorifilm.com"],
                applicationActivities: nil
            )
        }
    }
}


struct ActivityView: UIViewControllerRepresentable {
    
    let activityItems: [Any]
    let applicationActivities: [UIActivity]?
    
    
    func makeUIViewController(
        context: UIViewControllerRepresentableContext<ActivityView>
    ) -> UIActivityViewController {
        return UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities
        )
    }
    
    func updateUIViewController(
        _ uiViewController: UIActivityViewController,
        context: UIViewControllerRepresentableContext<ActivityView>
    ) {
        // Nothing to do
    }
}



struct activityButton_Previews: PreviewProvider {
    static var previews: some View {
        activityButton()
    }
}
