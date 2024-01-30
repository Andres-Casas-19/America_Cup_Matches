//
//  MatchDetailsModel.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 30/01/2024.
//

import Foundation

struct MatchDetailsModel: Identifiable {
  let id = UUID()
  let goals: [GoalsModel]?
  let cards: [CardModel]?
}
