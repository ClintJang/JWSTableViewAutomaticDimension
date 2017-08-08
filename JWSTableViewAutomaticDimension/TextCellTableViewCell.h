//
//  TextCellTableViewCell.h
//  JWSTableViewAutomaticDimension
//
//  Created by Jang Wangsu on 2017. 8. 8..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface TextCellTableViewCell : UITableViewCell

/**
 @brief init layout
 */
- (void)initLayoutWithData:(NSString *)data;
@end
