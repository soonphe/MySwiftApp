import UIKit

class IWCustomTabBarController: UITabBarController {

//      MARK: - Properties
//      图片
        fileprivate let tabBarImageNames = ["home_select","sheying_select"]
        fileprivate let tabBarTitles = ["首页","我的"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//                自定义 TabBar 外观
                createCustomTabBar(addHeight: 0)
                
//                  创建子控制器
                addDefaultChildViewControllers()
                
//                  设置每一个子页面的按钮展示
                setChildViewControllerItem()
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    /// 添加默认的页面
    fileprivate func addDefaultChildViewControllers() {
         let vc1 = HomeViewController()
         vc1.view.backgroundColor = UIColor.white
         
         let vc2 = MYViewController()
         vc2.view.backgroundColor = UIColor.white
         
         viewControllers = [vc1, vc2]
     }
    
    /// 设置外观
        ///
        /// - parameter addHeight: 增加高度，0 为默认
        fileprivate let customTabBarView = IWCustomTabBarView()
        fileprivate func createCustomTabBar(addHeight: CGFloat) {
            
            //  改变tabbar 大小
            var oriTabBarFrame = tabBar.frame
            oriTabBarFrame.origin.y -= addHeight
            oriTabBarFrame.size.height += addHeight
            tabBar.frame = oriTabBarFrame
            
            customTabBarView.frame = tabBar.bounds
            customTabBarView.frame.origin.y -= addHeight
            customTabBarView.backgroundColor = UIColor.groupTableViewBackground
            customTabBarView.frame.size.height = tabBar.frame.size.height + addHeight
            customTabBarView.isUserInteractionEnabled = true
            tabBar.addSubview(customTabBarView)
        }
    
    /// 设置子页面的item项
        fileprivate func setChildViewControllerItem() {
            guard let containViewControllers = viewControllers else {
                print("⚠️  设置子页面 item 项失败  ⚠️")
                return
            }
            
            if containViewControllers.count != tabBarImageNames.count {
                fatalError("子页面数量和设置的tabBarItem数量不一致，请检查！！")
            }
            
            //  遍历子页面
            for (index, singleVC) in containViewControllers.enumerated() {
                singleVC.tabBarItem.image = UIImage(named: tabBarImageNames[index])
                singleVC.tabBarItem.selectedImage = UIImage(named: tabBarImageNames[index] + "_selected")
                singleVC.tabBarItem.title = tabBarTitles[index]
            }
        }

}
