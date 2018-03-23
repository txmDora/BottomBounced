//
//  MSSlidingViewManager.h
//  musikid - DEMO
//
//  Created by Cstye on 15/12/28.
//  Copyright © 2015年 com.musikid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MSSlidingViewManager : NSObject

- (id)initWithInnerView:(UIView*)_innerView containerView:(UIView *)_containerView;    // 将创建好的view添加进去
- (void)slideViewIn;            // 从下往上划入界面

@end
