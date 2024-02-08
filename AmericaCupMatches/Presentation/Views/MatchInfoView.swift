//
//  MatchInfoView.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 23/01/2024.
//

import SwiftUI

struct MatchInfoView<ViewModel: MatchInfoViewModelProtocol>: View {
  
  @ObservedObject var viewModel: ViewModel
  
  var body: some View {
    VStack {
      
      MatchView(viewModel.matchCell)
      
      Spacer()
      
      
      List() {
        
        if let goals = viewModel.matchDetails.first?.goals {
          Section(header: Text(LocalizedStringKey("goals_sub_title"))) {
            ForEach(goals) { goal in
              HStack {
                
                HStack {
                  Image(systemName: "soccerball")
                  Text(goal.minute)
                    .italic()
                  Text(goal.playerName)
                    .lineLimit(1)
                }
                
                Spacer()
                
                HStack {
                  Text(goal.playerName)
                    .lineLimit(1)
                  Text(goal.minute)
                    .italic()
                  Image(systemName: "soccerball")
                }
              }
            }
          }
        }
        
        if let cards = viewModel.matchDetails.first?.cards {
          Section(header: Text (LocalizedStringKey("cards_sub_title"))) {
            ForEach(cards) { card in
            HStack {
              
              HStack {
                Image(systemName: "lanyardcard.fill")
                  .foregroundColor(viewModel.changeCardColor(card))
                Text(card.minute)
                  .italic()
                Text(card.playerName)
                  .lineLimit(1)
              }
              
              Spacer()
              
              HStack {
                Text(card.playerName)
                  .lineLimit(1)
                Text(card.minute)
                  .italic()
                Image(systemName: "lanyardcard.fill")
                  .foregroundColor(viewModel.changeCardColor(card))
              }
              
            }
          }
          }
        }
        
      }
      .navigationTitle("Copa América USA 2024")
      .navigationBarTitleDisplayMode(.inline)
    }
    .onAppear {
      viewModel.getMatchInfo()
    }
  }
  
}

struct MatchInfoView_Previews: PreviewProvider {
  static var previews: some View {
    MatchInfoView(viewModel: MatchInfoViewModel(useCase: MatchInfoUseCase(),
                                                matchCell: TeamsUseCase().getMatchesList().first!))
  }
}
