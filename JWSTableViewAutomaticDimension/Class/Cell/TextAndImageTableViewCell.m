//
//  TextAndImageTableViewCell.m
//  JWSTableViewAutomaticDimension
//
//  Created by Jang Wangsu on 2017. 8. 14..
//  Copyright © 2017년 Clint Jang. All rights reserved.
//

#import "TextAndImageTableViewCell.h"
@interface TextAndImageTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *textMsgLabel;

@property (weak, nonatomic) IBOutlet UIImageView *sampleImageView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sampleImageViewLayoutConstraintWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sampleImageViewLayoutConstraintHeight;

@end

@implementation TextAndImageTableViewCell

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
    // Image Setting TEST
    NSString *imageNameString = [data objectForKey:kImageKey];
    UIImage *image = [UIImage imageNamed:imageNameString];
    
    if (image != nil)
    {
        self.sampleImageViewLayoutConstraintWidth.constant = image.size.width;
        self.sampleImageViewLayoutConstraintHeight.constant = image.size.height;
        
        [self.sampleImageView setImage:[UIImage imageNamed:imageNameString]];
        
    }
    else
    {
        self.sampleImageViewLayoutConstraintWidth.constant = 0.0f;
        self.sampleImageViewLayoutConstraintHeight.constant = 0.0f;
    }
    
    // Text Setting TEST
    NSString *textString = [data objectForKey:kTextKey];
    [self.textMsgLabel setText:textString];
    
    
}

@end
