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
    MatchView(viewModel.matchCell)
    .navigationTitle("Copa América USA 2024")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct MatchInfoView_Previews: PreviewProvider {
  static var previews: some View {
    MatchInfoView(viewModel: MatchInfoViewModel(matchCell: TeamsUseCase().getMatchesList().first!))
  }
}
