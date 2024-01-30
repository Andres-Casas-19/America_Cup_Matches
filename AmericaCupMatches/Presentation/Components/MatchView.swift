//
//  MatchView.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 25/01/2024.
//

import SwiftUI

struct MatchView: View {
  let matchCell: MatchCell
  
  init(_ match: MatchCell) {
    self.matchCell = match
  }

    var body: some View {
      VStack {
        Text(matchCell.title)
          .bold()
      
          VStack(spacing: 12) {
            
            HStack(spacing: 12) {
              Image(matchCell.localTeam.flag)
                .resizable()
                .frame(width: 120, height: 80)
              
              VStack {
                Text(matchCell.result)
                Text(matchCell.matchStatus.rawValue)
                  .bold()
              }
              Image(matchCell.visitorTeam.flag)
                .resizable()
                .frame(width: 120, height: 80)
            }
            
            HStack(spacing: 45) {
              Spacer()
              
              Text(matchCell.localTeam.name)
                .multilineTextAlignment(.center)
                .frame(width: 120, alignment: .center)
              
              Spacer()

              Text(matchCell.visitorTeam.name)
                .multilineTextAlignment(.center)
                .frame(width: 120, alignment: .center)
              
              Spacer()
            }
          }
          .padding(.top, 8)
          Spacer()
      }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
      MatchView(TeamsUseCase().getMatchesList().first!)
    }
}
