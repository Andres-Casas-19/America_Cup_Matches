//
//  MatchInfoUseCase.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 30/01/2024.
//

import Foundation

struct MatchInfoUseCase: MatchInfoUseCaseProtocol {
  
  // MARK: - Methods
  func getMatchInfoList() -> [MatchDetailsModel] {
    return [
      MatchDetailsModel(goals: [GoalsModel(minute: "24'", playerName: "Lionel Messi", team: TeamModel(flag: "Argentina", name: "Argentina")),
                                GoalsModel(minute: "70'", playerName: "Lionel Messi", team: TeamModel(flag: "Argentina", name: "Argentina"))],
                        cards: [CardModel(color: .yellow, minute: "32", playerName: "Lautaro Martínez", team: TeamModel(flag: "Argentina", name: "Argentina")),
                                CardModel(color: .red, minute: "85'", playerName: "Lionel Messi", team: TeamModel(flag: "Argentina", name: "Argentina")),
                                CardModel(color: .red, minute: "85'", playerName: "Brad Pitt", team: TeamModel(flag: "Trinidad", name: "Trinidad y Tobago"))]
                       ),

      MatchDetailsModel(goals: [GoalsModel(minute: "10'", playerName: "Falcao", team: TeamModel(flag: "Colombia", name: "Colombia"))],
                        cards: [CardModel(color: .yellow, minute: "40", playerName: "Luis Díaz", team: TeamModel(flag: "Colombia", name: "Colombia"))]
                       )
    ]
  }
  
}
