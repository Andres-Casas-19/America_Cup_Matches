//
//  ContentView.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 22/01/2024.
//

import SwiftUI

struct MatchesOfTheDayView<ViewModel: MatchesOfTheDayViewModelProtocol>: View {
  // MARK: Properties
  @ObservedObject var viewModel: ViewModel
  
  init(viewModel: ViewModel) {
    self.viewModel = viewModel
  }
  
  // MARK: - Views
  var body: some View {
    NavigationView {
      VStack {
        Text("Fecha 1")
          .foregroundColor(.gray)
          .font(.title3)
          .bold()
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal, 16)
        List(viewModel.matchesList) { match in
          ZStack {
            MatchView(match, spacing: 18)
            .widthImages(widthImageAndText: 75, heightImage: 45)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 8)
            
            NavigationLink(destination: MatchInfoView(viewModel: MatchInfoViewModel(matchCell: match))) {
              EmptyView()
            }
            .opacity(0)
          }
          .listRowBackground(Color.clear)
          .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
      }
      .navigationTitle(LocalizedStringKey("app_title"))
      .padding(.top, 32)
    }
    .onAppear {
      viewModel.getTeams()
    }
  }
  
}

// MARK: - Preview
struct MatchesOfTheDayView_Previews: PreviewProvider {
  static var previews: some View {
    MatchesOfTheDayView(viewModel: MatchesOfTheDayViewModel(useCase: TeamsUseCase(), matchesList: [MatchCell]()))
  }
}
