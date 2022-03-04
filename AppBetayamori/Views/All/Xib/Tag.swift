import SwiftUI

struct Tag: View {
    @State var tagState:Bool = false
    @State var tapState: Bool = true
    @State var color: Color
    @State var text : String
    @State var size : Font
    var body: some View {
        
        
        
        
        if tapState == false {
            if tagState == false {
                Text(text)
                    .font(size)
                    .foregroundColor(color)
                    .padding(EdgeInsets(
                        top: 3,
                        leading: 7,
                        bottom:3,
                        trailing: 7
                    ))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(color, lineWidth: 2)
                    )
            } else if tagState == true {
                
                    
                    Text(text)
                            .font(size)
                            .foregroundColor(Color.white)
                            .padding(EdgeInsets(
                                top: 3,
                                leading: 7,
                                bottom:3,
                                trailing: 7
                            ))
                            .background(color)
                            .cornerRadius(30)
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(color, lineWidth: 2)
                        )
                    
                   
                }
                    
//            Image(systemName:"xmark.circle")
//                .foregroundColor(.black)
//                .shadow(color: .white, radius: 3, x: 0, y: 0)
//
                
            
            
        } else {
            Button(action: {self.tagState.toggle() }){
                
                if tagState == false {
                    Text(text)
                        .font(size)
                        .foregroundColor(color)
                        .padding(EdgeInsets(
                            top: 3,
                            leading: 7,
                            bottom:3,
                            trailing: 7
                        ))
                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(color, lineWidth: 2)
                        )
                } else if tagState == true {
                    Text(text)
                        .font(size)
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(
                            top: 3,
                            leading: 7,
                            bottom:3,
                            trailing: 7
                        ))
                        .background(color)
                        .cornerRadius(30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(color, lineWidth: 2)
                        )
                }
            }
            
        }
        
        
        
        
        
        
        
        
        
        
        
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(tagState: false, tapState: false, color: .red, text: "Sample", size: .callout)
    }
}
