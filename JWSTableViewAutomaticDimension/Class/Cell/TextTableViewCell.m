//
//  TextTableViewCell.m
//  JWSTableViewAutomaticDimension
//
//  Created by Jang Wangsu on 2017. 8. 8..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

#import "TextTableViewCell.h"
@interface TextTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *textMsgLabel;

@end

@implementation TextTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)initLayoutWithData:(NSDictionary *)data
{
    // Text Setting TEST
    NSString *textString = [data objectForKey:kTextKey];
    [self.textMsgLabel setText:textString];
    
}

@end
