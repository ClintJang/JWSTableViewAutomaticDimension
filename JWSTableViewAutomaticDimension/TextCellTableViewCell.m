//
//  TextCellTableViewCell.m
//  JWSTableViewAutomaticDimension
//
//  Created by Jang Wangsu on 2017. 8. 8..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

#import "TextCellTableViewCell.h"
@interface TextCellTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation TextCellTableViewCell

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
    [self.textLabel setText:textString];
    
}

@end
