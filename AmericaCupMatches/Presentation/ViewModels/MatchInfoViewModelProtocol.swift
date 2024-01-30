//
//  MatchInfoViewModelProtocol.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 24/01/2024.
//

import Foundation

protocol MatchInfoViewModelProtocol: ObservableObject {
  var matchCell: MatchCell { get set }
}
