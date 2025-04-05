//
//  CustomTextFieldView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct CustomTextFieldView: View {
    @Binding var input: String;
    @State var placeholder = ""
    @State var width: CGFloat = .infinity;
    @FocusState private var isFocused: Bool;
    
    var isLabelActive: Bool {
        get {
            isFocused || !input.isEmpty;
        }
    }
    
    var body: some View {
        ZStack (alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.mainBg)
                .onTapGesture {
                    self.isFocused = true
                }

            TextField("", text: $input)
                .padding(.leading, 10)
                .focused($isFocused)
                .foregroundColor(.primary)
                .overlay(alignment: .leading) {
                    Text(placeholder)
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                        .offset(x: 0, y: isLabelActive ? -15 : 0)
                        .font(.system(size: isLabelActive ? 12 : 16, weight: .light))
                }
        }
        .frame(width: width, height: 50)
    }
}

#Preview {
    @Previewable @State var inputText = "";

    CustomTextFieldView(input: $inputText, placeholder: "Current Location", width: 250)
    
    
    TextField("1231231", text: .constant(""))
}
