//
//  ViewController.m
//  BottomBounced
//
//  Created by 田晓梦 on 16/7/5.
//  Copyright © 2016年 田晓梦. All rights reserved.
//

#import "ViewController.h"
#import "MKSupportPrijectView.h"
#import "MSSlidingViewManager.h"



@interface ViewController ()

@property (nonatomic,strong)MKSupportPrijectView *supportView;

@end

@implementation ViewController

-(MKSupportPrijectView *)supportView{
    if (_supportView == nil) {
        _supportView = [MKSupportPrijectView supportPrijectView];
    }
    return _supportView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)supportButtonAction:(id)sender {
    
    NSArray *array = @[@"1",@"2",@"3",@"4",@"1",@"2",@"3",@"4"];
    self.supportView.dataArray = array;
    
    MSSlidingViewManager *slidingManager = [[MSSlidingViewManager alloc] initWithInnerView:self.supportView containerView:self.view];
    [slidingManager slideViewIn];
    
}


@end
