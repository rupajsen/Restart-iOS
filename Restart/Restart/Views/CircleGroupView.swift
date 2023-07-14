//
//  CircleGroupView.swift
//  Restart
//
//  Created by Rupaj Sen on 13/07/23.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 40)
                .frame(width: 260,height: 260,alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 80)
                .frame(width: 260,height: 260,alignment: .center)
        }//:ZSTACK
    }
}

#Preview {
    ZStack{
        Color("ColorBlue")
            .ignoresSafeArea(.all,edges: .all)
        
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
