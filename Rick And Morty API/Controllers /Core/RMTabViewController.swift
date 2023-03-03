//
//  ViewController.swift
//  Rick And Morty API
//
//  Created by Zeliha Uslu on 3.03.2023.
//

import UIKit

// it can not be subclass
final class RMTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
        view.backgroundColor = .white
    }
    
    private func setUpTabs(){
        let charactersVc = RMCharactersViewController()
        let locationsVc = RMLocationsViewController()
        let episodesVc = RMEpisodesViewController()
        let settingsVc = RMSettingsViewController()
        
        charactersVc.title = "Characters"
        locationsVc.title = "Locations"
        episodesVc.title = "Episodes"
        settingsVc.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charactersVc)
        let nav2 = UINavigationController(rootViewController: locationsVc)
        let nav3 = UINavigationController(rootViewController: episodesVc)
        let nav4 = UINavigationController(rootViewController: settingsVc)
        
        setViewControllers(
            [nav1, nav2, nav3 ,nav4],
            animated: true)
    }
}


