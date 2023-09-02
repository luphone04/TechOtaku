//
//  simpleLoginHackathonApp.swift
//  simpleLoginHackathon
//
//  Created by Sei Mouk on 2/9/23.
//

import SwiftUI
import FirebaseCore
@main
struct simpleLoginHackathonApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
