//
//  BaseTabCtrl.swift
//  io-swift-snippet
//
//  Created by 美德远健 on 2018/8/7.
//  Copyright © 2018年 __FWHeart__. All rights reserved.
//

import Foundation
import UIKit

class BaseTabCtrl : UITabBarController{
    var tintColor:UIColor?
    var dataSource:Array<NSDictionary>?
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        didInitialize();
        return nil;
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        didInitialize();
    }
    func didInitialize(){
        if(nil == tintColor){
            tintColor = UIColor.blue;
        }
        self.tabBar.tintColor = self.tintColor;
    }
    func initDataSource(){
        
    }
}
