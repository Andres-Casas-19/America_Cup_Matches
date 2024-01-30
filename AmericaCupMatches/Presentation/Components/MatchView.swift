//
//  MatchView.swift
//  AmericaCupMatches
//
//  Created by Andres Esteban Casas Venegas on 25/01/2024.
//

import SwiftUI

struct MatchView: View {

  // MARK: - Properties
  let matchCell: MatchCell
  private var widthImageAndText: CGFloat = 120
  private var heightImage: CGFloat = 80
  private var spacing: CGFloat = 12
  private var cellTitleVerticalSpace: CGFloat = 8
  
  init(_ match: MatchCell,
       spacing: CGFloat? = nil) {
    self.matchCell = match
    self.spacing = spacing ?? self.spacing
  }
  
  private init(_ matchCell: MatchCell,
               widthImageAndText: CGFloat = 120,
               heightImage: CGFloat = 80,
               spacing: CGFloat,
               cellTitleVerticalSpace: CGFloat = 8) {
    self.matchCell = matchCell
    self.widthImageAndText = widthImageAndText
    self.heightImage = heightImage
    self.spacing = spacing
    self.cellTitleVerticalSpace = cellTitleVerticalSpace
  }

    var body: some View {
      VStack {

        Spacer()
          .frame(height: 8)

        Text(matchCell.title)
          .bold()
      
          VStack(spacing: spacing) {
            
            HStack(spacing: spacing) {
              Image(matchCell.localTeam.flag)
                .resizable()
                .frame(width: widthImageAndText, height: heightImage)
              
              VStack {
                Text(matchCell.result)
                Text(matchCell.matchStatus.rawValue)
                  .bold()
              }

              Image(matchCell.visitorTeam.flag)
                .resizable()
                .frame(width: widthImageAndText, height: heightImage)
            }
            
            HStack(spacing: spacing) {

              Text(matchCell.localTeam.name)
                .multilineTextAlignment(.center)
                .frame(width: widthImageAndText, alignment: .center)
              
              Text(matchCell.matchStatus.rawValue)
                .bold()
                .hidden()

              Text(matchCell.visitorTeam.name)
                .multilineTextAlignment(.center)
                .frame(width: widthImageAndText, alignment: .center)
              
            }
            .padding(.trailing, spacing * 2)
            .padding(.leading, spacing * 2)
          }
          .padding(.top, cellTitleVerticalSpace)

          Spacer()
          .frame(height: 8)
      }
    }
  
  @inlinable func widthImages(widthImageAndText: CGFloat? = nil,
                              heightImage: CGFloat? = nil) -> some View {
    MatchView(self.matchCell,
              widthImageAndText: widthImageAndText ?? self.widthImageAndText,
              heightImage: heightImage ?? self.heightImage,
              spacing: self.spacing)
  }
  
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
      MatchView(TeamsUseCase().getMatchesList().first!)
    }
}
