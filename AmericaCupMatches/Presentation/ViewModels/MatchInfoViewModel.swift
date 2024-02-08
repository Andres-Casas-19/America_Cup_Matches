//
//  MatchInfoViewModel.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 24/01/2024.
//

import Foundation
import SwiftUI

final class MatchInfoViewModel: MatchInfoViewModelProtocol {
  
  // MARK: - Properties
  var useCase: MatchInfoUseCaseProtocol
  
  @Published var matchCell: MatchCell
  @Published var matchDetails: [MatchDetailsModel] = [MatchDetailsModel]()
  
  init(useCase: MatchInfoUseCaseProtocol, matchCell: MatchCell) {
    self.useCase = useCase
    self.matchCell = matchCell
  }
  
  // MARK: - Methods
  func getMatchInfo() {
    matchDetails = useCase.getMatchInfoList()
  }

  func changeCardColor(_ card: CardModel) -> Color {
    switch card.color {
    case .yellow:
      return .yellow
    case .red:
      return .red
    }
  }

}
