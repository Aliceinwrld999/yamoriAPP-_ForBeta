//
//  FullScreenImageModal.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/01/27.
//

import SwiftUI

struct FullScreenImageModal: View {
    
    @State var offset:CGSize = .zero
    @State var initialOffset: CGSize = .zero
    @State var scale:CGFloat = 1.0
    @State var initialScale: CGFloat = 1.0
    
    @State var deviceHeight = 650
    
    var fullScreenImageUrl = ""
    
    @Binding var fullscreenImageModalIsShow: Bool
    
    @State var closePosition: CGFloat = 300
    
    @Environment(\.presentationMode) private var presentationMode
    
    
    @EnvironmentObject var deviceSize: DeviceSize
    
    
    
    
    var body: some View {
        
        let closeHeight = deviceSize.height * 0.2
        
        let magnificationGesture = MagnificationGesture()
            .onChanged { scale = $0 * initialScale}
            .onEnded{ _ in initialScale = scale
                if scale <= 1 {
                    scale = 1
                
                }
                
            }
        let dragGesture = DragGesture()
        
            .onChanged { offset = CGSize(width: initialOffset.width + $0.translation.width, height: initialOffset.height + $0.translation.height)
                if scale <= 1 {
                        offset = CGSize(width: .zero, height: initialOffset.height + $0.translation.height)
                }
            }
            .onEnded{ _ in initialOffset = offset
                if offset.height > closeHeight {
                    withAnimation{
                        offset.height = deviceSize.height
                        //                    self.presentationMode.wrappedValue.dismiss()
                        fullscreenImageModalIsShow = false
                    }
                } else if offset.height < closeHeight * -1  {
                    withAnimation{
                        offset.height = deviceSize.height * -1
                        //                        self.presentationMode.wrappedValue.dismiss()
                        fullscreenImageModalIsShow = false
                    }
                } else {
                    withAnimation{
                        offset = .zero
                    }
                }
            }
        
        
        
        NavigationView{
            GeometryReader{ proxy in
                
                //                deviceHeight = proxy.size.height
                
                ZStack(alignment: .center){
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    Image(fullScreenImageUrl)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.blue)
                        .offset(offset)
                        .scaleEffect(scale)
                    // (1)
                        .gesture(SimultaneousGesture(magnificationGesture, dragGesture))
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }){
                            Image(systemName: "multiply")
                                .foregroundColor(Color.white)
                        }
                        
                    }
                }
                
            }
        }
    }
    
    
}
//extension View {
//func SwipeDismiss (geometry: CGFloat) -> some View{
//    let a = 0
//    return FullScreenImageModal().presentationMode.wrappedValue.dismiss()
//}
//}

struct FullScreenImageModal_Previews: PreviewProvider {
    
    @State static var fullscreenImageModalIsShow = false
    
    static var previews: some View {
        FullScreenImageModal(fullscreenImageModalIsShow: $fullscreenImageModalIsShow)
    }
}
