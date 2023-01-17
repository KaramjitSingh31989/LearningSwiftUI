//
//  ToggleView.swift
//  LearningSwiftUI
//
//  Created by Harsimrat on 17/01/23.
//

import SwiftUI

struct ToggleView: View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text(isOn == true ? "On" : "off")
            }.fixedSize()
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView(isOn: .constant(false))
    }
}
