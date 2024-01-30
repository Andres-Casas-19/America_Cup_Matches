//
//  AmericaCupMatchesApp.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import SwiftUI

@main
struct AmericaCupMatchesApp: App {
    var body: some Scene {
        WindowGroup {
          MatchesOfTheDayView(viewModel: MatchesOfTheDayViewModel(useCase: TeamsUseCase(), matchesList: [MatchCell]()))        }
    }
}
