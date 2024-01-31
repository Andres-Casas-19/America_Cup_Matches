//
//  MatchInfoViewModelProtocol.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 24/01/2024.
//

import Foundation

protocol MatchInfoViewModelProtocol: ObservableObject {
  
  // MARK: - Properties
  var matchCell: MatchCell { get set }
  var matchDetails: [MatchDetailsModel] { get set }
  
  // MARK: - Methods
  func getMatchInfo()
  
}
