//
//  MatchInfoUseCaseProtocol.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 30/01/2024.
//

import Foundation

protocol MatchInfoUseCaseProtocol {
  
  // MARK: - Methods
  func getMatchInfoList() -> [MatchDetailsModel]
}
