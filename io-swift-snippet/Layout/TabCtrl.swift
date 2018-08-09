//
// Created by 美德远健 on 2018/8/7.
// Copyright (c) 2018 __FWHeart__. All rights reserved.
//

import Foundation
import UIKit
class TabCtrl:BaseTabCtrl {
    override func didInitialize() {
        super.didInitialize();
        var datas:Array<NSDictionary>? = self.dataSource;
        var vcs:NSMutableArray = [];
        for dict in datas!{
            var vc:UIViewController? = dict.value(forKey: "vc") as! UIViewController;
            vc?.tabBarItem.title = dict.value(forKey: "title") as! String;
            vc?.tabBarItem.image = UIImage.init(named: dict.value(forKey: "icon") as! String);
            vc?.tabBarItem.badgeValue = dict.value(forKey: "badge") as! String;
            vcs.add(vc);
        }
        self.viewControllers = vcs.copy();
    }
}