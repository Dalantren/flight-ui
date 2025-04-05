//
//  DashLineView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 05/04/2025.
//

import SwiftUI

struct DashLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct DashLineView: View {
    var lineWidth: CGFloat = 3;
    var dashPattern: [CGFloat] = [5];
    
     var body: some View {
         DashLine()
             .stroke(style: StrokeStyle(lineWidth: lineWidth, dash: dashPattern))
             .frame(height: lineWidth)
             .offset(y: lineWidth / 2)
    }
}

#Preview {
    DashLineView(lineWidth: 3, dashPattern: [10])
}
