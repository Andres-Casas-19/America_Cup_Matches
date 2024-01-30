//
//  MatchesOfTheDayViewModel.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import Foundation

final class MatchesOfTheDayViewModel: MatchesOfTheDayViewModelProtocol {

  // MARK: Properties
  var useCase: TeamsUseCaseProtocol
  
  @Published var matchesList: [MatchCell] = [MatchCell]()

  init(useCase: TeamsUseCaseProtocol, matchesList: [MatchCell]) {
    self.useCase = useCase
    self.matchesList = matchesList
  }

  // MARK: - Methods
  func getTeams() {
    matchesList = useCase.getMatchesList()
  }

}
