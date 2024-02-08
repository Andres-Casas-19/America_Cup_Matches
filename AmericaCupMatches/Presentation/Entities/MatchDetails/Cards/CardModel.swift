//
//  CardModel.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 30/01/2024.
//

import Foundation

struct CardModel: Identifiable {
  let id = UUID()
  let color: CardColorEnum
  let minute: String
  let playerName: String
  let team: TeamModel
}
