//
//  MatchesOfTheDayViewModelProtocol.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import Foundation

protocol MatchesOfTheDayViewModelProtocol: ObservableObject {
  // MARK: - Properties
  var matchesList: [MatchCell] { get set }

  // MARK: - Methods
  func getTeams()
}
