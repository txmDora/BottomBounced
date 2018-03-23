//
//  MSSlidingViewManager.h
//  BottomBounced
//
//  Created by 田晓梦 on 16/7/5.
//  Copyright © 2016年 田晓梦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MSSlidingViewManager : NSObject

- (id)initWithInnerView:(UIView*)_innerView containerView:(UIView *)_containerView;    // 将创建好的view添加进去
- (void)slideViewIn;            // 从下往上划入界面

@end
