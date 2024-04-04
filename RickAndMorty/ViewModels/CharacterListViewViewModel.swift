//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 4/4/2567 BE.
//

import UIKit

final class CharacterListViewViewModel :NSObject{
    func fetchCharacters(){
        RMService.shared.execute(.listCharactersRequests,expecting: RMGetAllCharactersResponse.self) {result in
            switch result {
            case .success(let model):
                //print(String(describing: model))
                print("Total: "+String(model.info.pages))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension CharacterListViewViewModel:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .brown
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bound = UIScreen.main.bounds
        let width = (bound.width - 30)/2
        return CGSize(width: width, height: width*1.5)
    }
}
