//
//  finPlannerApp.swift
//  finPlanner
//
//  Created by admin on 1.01.26.
//

import SwiftUI

@main
struct finPlannerApp: App {
    @State var path: NavigationPath = .init()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                MainTabView(path: $path)
                    .navigationDestination(for: NavigationPage.self){
                        page in
                        switch page {
                        case .details: DetailsView(path: $path)
                        }
                    }
            }
        }
    }
}

