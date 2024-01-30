//
//  MatchInfoViewModel.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 24/01/2024.
//

import Foundation

class MatchInfoViewModel: MatchInfoViewModelProtocol {
  
   @Published var matchCell: MatchCell

  init(matchCell: MatchCell) {
    self.matchCell = matchCell
  }

}
