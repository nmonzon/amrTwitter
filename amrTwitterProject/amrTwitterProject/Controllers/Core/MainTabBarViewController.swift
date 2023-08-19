//
//  ViewController.swift
//  amrTwitterProject
//
//  Created by Nicolas Monzon on 19/8/2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        vc1.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house"), tag: 0)
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        vc2.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        
        let vc3 = UINavigationController(rootViewController: NotificationViewController())
        vc3.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "bell"), tag: 2)
        vc3.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        
        let vc4 = UINavigationController(rootViewController: DirectMessagesViewController())
        vc4.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "envelope"), tag: 3)
        vc4.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }


}

