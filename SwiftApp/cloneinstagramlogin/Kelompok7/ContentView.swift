    //
    //  ContentView.swift
    //  Kelompok7
    //
    //  Created by Dimas Purnomo on 11/05/22.
    //

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    private var condition: Bool { email.isEmpty || password.isEmpty}
    
    
    var body: some View {
        NavigationView {
            ZStack {

                VStack {
                    Text("Instagram")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        authenticateUser(email: email, password: password)
                    }
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(condition ? .gray : .blue)
                    .cornerRadius(10)
                    .padding()
                    
                    NavigationLink(destination: Text("You are logged in @\(email)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                    
                    SignInWithAppleButton(
                        onRequest: { request in
                        print("onRequest")},
                        onCompletion: { result in
                        print("onCompletion")})
                    .frame(width: 300, height: 50)
                    
                    
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(email: String, password: String) {
        if email.lowercased() == "Dimz@gmail.com" {
            wrongEmail = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongEmail = 2
        }
    }
    
    private func isValidEmail(_ email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
        }
}
