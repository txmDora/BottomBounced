//
//  SupportPrijectView.m
//  ceshi
//
//  Created by 田晓梦 on 16/7/5.
//  Copyright © 2016年 田晓梦. All rights reserved.
//

#import "MKSupportPrijectView.h"
#import "SupportTableViewCell.h"

#define MSScreenH [UIScreen mainScreen].bounds.size.height
#define MSScreenW [UIScreen mainScreen].bounds.size.width


@interface MKSupportPrijectView()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *emptyButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIView *backView;
@end

@implementation MKSupportPrijectView

-(void)awakeFromNib{
    [self bringSubviewToFront:self.backView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}
+ (instancetype)supportPrijectView {
    MKSupportPrijectView *supportPrijectView = [[[NSBundle mainBundle] loadNibNamed:@"MKSupportPrijectView" owner:nil options:nil] lastObject];
    supportPrijectView.frame = [UIScreen mainScreen].bounds;
    [[UIApplication sharedApplication].keyWindow addSubview:supportPrijectView];
    return supportPrijectView;
}
- (IBAction)cancelAction:(id)sender {
    //backView动画
    CGRect rising= CGRectMake(0, self.backView.frame.origin.y - 30, MSScreenW, self.frame.size.height);
    CGRect falling = CGRectMake(0, MSScreenH, MSScreenW, self.frame.size.height);
    // 上移的动画
    [UIView animateWithDuration:0.2 animations:^{
        [self.backView setFrame:rising];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 animations:^{ // 下移的动画
            [self.backView setFrame:falling];
        } completion:^(BOOL finished) {
            [self removeFromSuperview];
        }];
    }];    
}

-(void)setDataArray:(NSArray *)dataArray{
    NSLog(@"%@",dataArray);
    _dataArray = dataArray;
    [self.tableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"supportCell";
    SupportTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [SupportTableViewCell showCell];
    }
//    MSAllShow *allshows = self.tourArray[indexPath.row];
//    cell.allShowModel = allshows;
    return cell;
 
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 96;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
