//
//  RMCharactersViewController.swift
//  Rick And Morty API
//
//  Created by Zeliha Uslu on 3.03.2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
           queryParameters: [
           URLQueryItem(name: "name", value: "rick")]
        )
        
        print(request.url as Any)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) {result in
            
        }
        
    }
   

}
