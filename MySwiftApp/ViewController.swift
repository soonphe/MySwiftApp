//
//  ViewController.swift
//  MySwiftApp
//
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
//     MARK: - 常量和变量
        let a = 10
//        a = 2   ----> 会报错 let定义的变量不能改变,不能进行赋值
         print(a)
        
         var b = 20
         b = 30 //不会报错,var定义的变量是可以被修改的
         print(b)
        
        let c: Int = 10
        let d: CGFloat = 20.3
      /*
         swift是一个强类型的语言
         
         Int 是swift中整数的默认类型(NSIbteger)
         小数默认类型是double
         let d: CGFloat = 20.3  这属于手动指定类型
         */
//       let res1 = c + d   -->  会报错
         let res2 = c + Int(d)
         print(res2)
          /*
            不同类型之间的运算
            swift中类型不一样的时候不能操作,没有银行形式的转换 需要coder手动转换数据
            转换类型: 通过类型调用构造函数 传递参数转换 ,或as语法
            */
//         let f: Int
//         print(f) //报错,未初始化之前都不能使用
        
        
//        2. Swift与OC的不同演示
        
        let myView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        myView.backgroundColor = UIColor.yellow
        myView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
//        color Literal属性
        view.addSubview(myView)
        
        
        let btn = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        view.addSubview(btn)
        btn.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
//       给按钮添加点击事件
        btn.addTarget(self, action: #selector(btnDidClick), for: .touchUpInside)
        
        
    }
    
    
//   点击事件
    @objc func btnDidClick() {
           print("我被点击了")
       }


}

