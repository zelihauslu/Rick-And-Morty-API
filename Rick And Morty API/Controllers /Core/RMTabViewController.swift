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
    }
    
    private func setUpTabs(){
        let charactersVc = RMCharactersViewController()
        let locationsVc = RMLocationsViewController()
        let episodesVc = RMEpisodesViewController()
        let settingsVc = RMSettingsViewController()
        
//        charactersVc.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charactersVc)
        let nav2 = UINavigationController(rootViewController: locationsVc)
        let nav3 = UINavigationController(rootViewController: episodesVc)
        let nav4 = UINavigationController(rootViewController: settingsVc)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person.3"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations",
                                       image: UIImage(systemName: "globe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                       image: UIImage(systemName: "tv"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [nav1, nav2, nav3 ,nav4],
            animated: true)
    }
}


