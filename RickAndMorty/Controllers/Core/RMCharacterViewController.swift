//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 29/3/2567 BE.
//

import UIKit
/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "ตัวละคร"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request,expecting: RMCharacter.self){result in
            
        }
    }

}


