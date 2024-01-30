//
//  TeamsUseCase.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import Foundation

struct TeamsUseCase: TeamsUseCaseProtocol {
  
  // MARK: - Methods
  func getMatchesList() -> [MatchCell] {
    return [
      MatchCell(title: "Grupo A", localTeam: TeamModel(flag: "Argentina", name: "Argentina"), visitorTeam: TeamModel(flag: "Trinidad", name: "Trinidad y Tobago"), result: "0 : 0", matchStatus: .unstarted),
      MatchCell(title: "Grupo B", localTeam: TeamModel(flag: "Mexico", name: "México"), visitorTeam: TeamModel(flag: "Jamaica", name: "Jamaica"), result: "0 : 0", matchStatus: .unstarted),
      MatchCell(title: "Grupo C", localTeam: TeamModel(flag: "USA", name: "Estados Unidos"), visitorTeam: TeamModel(flag: "Bolivia", name: "Bolivia"), result: "0 : 0", matchStatus: .unstarted),
      MatchCell(title: "Grupo D", localTeam: TeamModel(flag: "Colombia", name: "Colombia"), visitorTeam: TeamModel(flag: "Paraguay", name: "Paraguay"), result: "0 : 0", matchStatus: .unstarted),
      MatchCell(title: "Grupo A", localTeam: TeamModel(flag: "Jamaica", name: "Jamaica"), visitorTeam: TeamModel(flag: "Argentina", name: "Argentina"), result: "0 : 0", matchStatus: .unstarted),
      MatchCell(title: "Grupo B", localTeam: TeamModel(flag: "Paraguay", name: "Paraguay"), visitorTeam: TeamModel(flag: "Colombia", name: "Colombia"), result: "0 : 0", matchStatus: .unstarted),
      MatchCell(title: "Grupo D", localTeam: TeamModel(flag: "Bolivia", name: "Bolivia"), visitorTeam: TeamModel(flag: "Mexico", name: "México"), result: "0 : 0", matchStatus: .unstarted)
    ]
  }
}
