//
//  MSSlidingViewManager.m
//  BottomBounced
//
//  Created by 田晓梦 on 16/7/5.
//  Copyright © 2016年 田晓梦. All rights reserved.
//

#import "MSSlidingViewManager.h"

@implementation MSSlidingViewManager {
    BOOL visible;               // 是否可见
    UIView *innerView;          // 内部view
    UIView *containerView;      // 容器view
}

- (id)initWithInnerView:(UIView*)_innerView containerView:(UIView *)_containerView {
    self = [super init];
    if (!self) {
        return nil;
    }
    innerView = _innerView;
    containerView = _containerView;
    return self;
}


- (void)slideViewIn {
    visible = YES;
    
    CGFloat innerX = CGRectGetMinX(innerView.frame);
    CGFloat innerWidth = CGRectGetWidth(innerView.frame);
    CGFloat innerHeight = CGRectGetHeight(innerView.frame);
    CGFloat innerOriginalY = CGRectGetHeight(containerView.frame);
    CGFloat innerTargetY = CGRectGetHeight(containerView.frame) - innerHeight;
    
    CGRect original = CGRectMake(innerX, innerOriginalY, innerWidth, innerHeight);
    CGRect target = CGRectMake(innerX, innerTargetY, innerWidth, innerHeight);
    
    [innerView setFrame:original];
    [containerView addSubview:innerView];
    
    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.8 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [innerView setFrame:target];
    } completion:^(BOOL finished) {
    }];
}
@end
