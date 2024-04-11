//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 4/4/2567 BE.
//

import UIKit

final class RMCharacterListViewViewModel :NSObject{
    func fetchCharacters(){
        RMService.shared.execute(.listCharactersRequests,expecting: RMGetAllCharactersResponse.self) {result in
            switch result {
            case .success(let model):
                //print(String(describing: model))
                print("Example img url: "+String(model.results.first?.image ?? "No image"))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension RMCharacterListViewViewModel:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: RMCharacterCollectionViewCell.cellidentifier,
            for: indexPath
        )as? RMCharacterCollectionViewCell else{
            fatalError("unsupported cell")
        }
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "idea",
                                                               characterStatus: .alive,
                                                               characterImageUrl: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
        cell.configure(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bound = UIScreen.main.bounds
        let width = (bound.width - 30)/2
        return CGSize(width: width, height: width*1.5)
    }
}
