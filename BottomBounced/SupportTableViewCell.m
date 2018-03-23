//
//  SupportTableViewCell.m
//  ceshi
//
//  Created by 田晓梦 on 16/7/5.
//  Copyright © 2016年 田晓梦. All rights reserved.
//

#import "SupportTableViewCell.h"

@implementation SupportTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


+(SupportTableViewCell *)showCell{
    return [[[NSBundle mainBundle] loadNibNamed:@"SupportTableViewCell" owner:nil options:nil] lastObject];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
