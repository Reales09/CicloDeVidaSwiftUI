//
//  CicloSwiftUIApp.swift
//  CicloSwiftUI
//
//  Created by Reales Rectoro Myles Clarence on 31/03/24.
//

import SwiftUI

@main
struct CicloSwiftUIApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    init (){
        inicio()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase){
            (phase) in
            switch phase{
            case.active:
                print("Esta activo")
            case .inactive:
                print("esta inactivo")
            case .background:
                print("Esta en background")
            @unknown default:
                fatalError("Algo salio mal")
                
            }
        }
    }
    
    func inicio(){
        print("Es el primero en ejecutarse")
    }

}
