//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Harsimrat on 16/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username : String = String()
    @State private var password : String = String()
    @State private var isFaceIdOn : Bool = false
    
    var body: some View {

        VStack {
                Text("Sign In").font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all)
            Text("Email address *").font(.subheadline).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top: 0, leading: 20, bottom:2, trailing: 20))
            TextField("", text: $username ).padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20)).textContentType(.emailAddress)
                .frame(height: 44)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                    .padding([.horizontal],20)
            Text("Password *").font(.subheadline).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading).padding(EdgeInsets(top:20, leading: 20, bottom:2, trailing: 20))
            SecureField("", text: $password ).padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20)).textContentType(.emailAddress)
                .frame(height: 44)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))
                    .padding([.horizontal],20)
            Button {
                debugPrint("Forgot Password?")

            } label: {
                Text("Forgot Password?").font(.footnote).bold().underline()

            }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 0))
            HStack {
                Image("faceid")
                    .resizable()
                    .scaledToFit().frame(width: 24, height: 24).padding(.all)
                Text("Face id").font(.subheadline)
                Toggle("off", isOn: $isFaceIdOn).frame(maxWidth: .infinity, alignment: .trailing).padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing:10))
            }.background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray)).padding(.all)
            Button {
                debugPrint("FaceID terms")
            } label: {
                Text("FaceID terms").font(.footnote).bold().underline()

            }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 5, trailing: 0))
            Button {
                debugPrint("Username \(self.username) and Password: \(self.password)")
            } label: {
                Text("Sign In").bold()
                .frame(maxWidth: .infinity)
            }
            .disabled((username.count < 4 || password.count < 4)).padding(20).buttonStyle(.borderedProminent).tint(.blue).foregroundColor(.white).cornerRadius(8).frame(width:.infinity, height: 44)
            }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
