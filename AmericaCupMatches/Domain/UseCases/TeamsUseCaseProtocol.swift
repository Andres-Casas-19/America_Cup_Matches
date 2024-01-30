//
//  TeamsUseCaseProtocol.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import Foundation

protocol TeamsUseCaseProtocol {
  
  // MARK: - Methods
  func getMatchesList() -> [MatchCell]
}
