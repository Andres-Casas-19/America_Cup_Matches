//
//  GoalsModel.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 30/01/2024.
//

import Foundation

struct GoalsModel: Identifiable {
  let id = UUID()
  let minute: String
  let playerName: String
  let team: TeamModel
}
