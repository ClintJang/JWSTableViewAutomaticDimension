//
//  ViewController.h
//  JWSTableViewAutomaticDimension
//
//  Created by Jang Wangsu on 2017. 8. 8..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

/**
 @brief Dynamic Sizing Cell TEST Class
 @class ViewController
 */
@interface ViewController : UIViewController
@end


@interface ViewController (tableview) <UITableViewDataSource, UITableViewDelegate> // 딜리게이트는 함수링크를 위해
@end
