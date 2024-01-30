//
//  MatchCell.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import Foundation

struct MatchCell: Identifiable {
  let id = UUID()
  let title: String
  let localTeam: TeamModel
  let visitorTeam: TeamModel
  let result: String
  let matchStatus: MatchStatus
}
