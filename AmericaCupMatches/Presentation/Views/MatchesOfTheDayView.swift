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
        List(viewModel.matchesList) { value in
          ZStack {
            VStack {
              MatchView(value)
            }
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 8)
//            VStack {
//
//             Spacer()
//               .frame(height: 16)
//
//              Text(value.title)
//                .bold()
//              HStack {
//
//                Spacer()
//
//                VStack {
//                  Image(value.localTeam.flag)
//                    .resizable()
//                    .frame(width: 50, height: 30)
//                  Text(value.localTeam.name)
//                    .font(.system(size: 16))
//                    .frame(width: 80, alignment: .center)
//                    .multilineTextAlignment(.center)
//                    .scaledToFill()
//                }
//
//                Spacer()
//
//                VStack {
//                  Text(value.result)
//                  Text(value.matchStatus.rawValue)
//                    .bold()
//                }
//
//                Spacer()
//
//                VStack {
//                  Image(value.visitorTeam.flag)
//                    .resizable()
//                    .frame(width: 50, height: 30)
//                  Text(value.visitorTeam.name)
//                    .font(.system(size: 16))
//                    .multilineTextAlignment(.center)
//                    .frame(width: 80, alignment: .center)
//                    .scaledToFill()
//                }
//
//                Spacer()
//
//              }
//
//              Spacer()
//                .frame(height: 16)
//
//            }
//            .background(Color.white)
//            .cornerRadius(8)
//            .shadow(radius: 8)
//
            NavigationLink(destination: MatchInfoView(viewModel: MatchInfoViewModel(matchCell: value))) {
              EmptyView()
            }
            //.opacity(0)
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
