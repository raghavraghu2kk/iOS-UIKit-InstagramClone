//
//  MainTabVC.swift
//  InstagramFirestore
//
//  Created by Raghavendra Mirajkar on 08/06/24.
//

import UIKit

class MainTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureViewController()
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white

    }
    
    func configureViewController() {
        view.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        
        let feed = templateNavigationController(unselectedImage: .homeUnselected, selectedImage: .homeSelected, rootViewController: FeedController(collectionViewLayout: layout))
        let search = templateNavigationController(unselectedImage: .searchUnselected, selectedImage: .searchSelected, rootViewController: SearchController())
        let imageSelector = templateNavigationController(unselectedImage: .plusUnselected, selectedImage: UIImage(systemName: "plus.app.fill")!, rootViewController: ImageSelectorController())
        let notifications = templateNavigationController(unselectedImage: .likeUnselected, selectedImage: .likeSelected, rootViewController: NotificationController())
        let profile = templateNavigationController(unselectedImage: .profileUnselected, selectedImage: .profileUnselected, rootViewController: ProfileController())
        
        tabBar.tintColor = .black
        
        viewControllers = [feed,search,imageSelector,notifications,profile]
    }
    
    func templateNavigationController(unselectedImage : UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

