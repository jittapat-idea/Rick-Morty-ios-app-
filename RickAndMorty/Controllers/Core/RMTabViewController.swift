//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 29/3/2567 BE.
//

import UIKit
/// Controller to house tabs and root tab controllers
final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SetupTabs()
    }
    ///สร้าง Private function ใน class RMTabBarController สำหรับตั้งค่าแท็บ
    private func SetupTabs(){
        
        ///สร้างตัวแปร(ViewController) สำหรับแต่ละแท็บ
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingViewController()
        
        ///ตั้งค่าให้ title(ขนาดใหญ่) ของ Navigation Bar แสดงโดยอัตโนมัติ
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        ///สร้าง Navigation Controller สำหรับแต่ละตัวแปร (ViewController)
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        ///กำหนด แท็บ Bar Item สำหรับแต่ละแท็บ
        nav1.tabBarItem = UITabBarItem(title: "ตัวละคร" ,
                                       image:UIImage(systemName: "person") ,
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "สถานที่" ,
                                       image:UIImage(systemName: "map") ,
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "ตอน" ,
                                       image:UIImage(systemName: "tv") ,
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "ตั้งค่า" ,
                                       image:UIImage(systemName: "gear") ,
                                       tag: 4)
        
        /// ตั้งค่าให้ Navigation Bar แสดง title ขนาดใหญ่
        for nav in [nav1, nav2, nav3, nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        /// กำหนด View Controllers ของ Tab Bar Controller ด้วย Navigation Controllers
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true)
    }


}

