//
//  YBPulldownMenuView.m
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import "YBPulldownMenuView.h"
#import "UIView+Extension.h"

#import "YBPulldownItemCell.h"

#define YBPulldownScreenW ([UIScreen mainScreen].bounds.size.height)

@interface YBPulldownMenuView ()<UITableViewDataSource,UITableViewDelegate>


@property (weak, nonatomic) UITableView * item_tableView;


@end


@implementation YBPulldownMenuView

-(void)layoutSubviews{
    [super layoutSubviews];
    
    [UIView animateWithDuration:0.25 animations:^{
        self.item_tableView.frame = self.bounds;
    }];
    
}

#pragma mark - UITableViewDataSource


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    YBPulldownItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPulldownItemCell"];
    
    NSString *item_title = self.items[indexPath.row];
    
    cell.title = item_title;
    
    return cell;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.item_height;
}

#pragma mark - UITableViewDelegate


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([self.delegate respondsToSelector:@selector(menuView:didSeletedItemtIndexPath:)]){
        [self.delegate menuView:self didSeletedItemtIndexPath:indexPath];
    }
}


#pragma mark - Set and Get

-(void)setItems:(NSMutableArray *)items{
    _items = items;
    
    
    CGFloat unfold_height = _items.count * self.item_height;
    
    CGRect rect = [self convertRect:self.bounds toView:nil];
    
    if (unfold_height > YBPulldownScreenW - rect.origin.y){
        self.unfold_height = YBPulldownScreenW - rect.origin.y;
    }else{
        self.unfold_height = unfold_height;
    }
    
    [self.item_tableView reloadData];
}


-(CGFloat)item_height{
    if (_item_height == 0){
        _item_height = 40;
    }
    return _item_height;
}


-(UITableView *)item_tableView{
    if (_item_tableView == nil){
        UITableView *item_tableView = [[UITableView alloc]initWithFrame:self.bounds style:UITableViewStylePlain];
        [item_tableView registerNib:[UINib nibWithNibName:@"YBPulldownItemCell" bundle:nil] forCellReuseIdentifier:@"YBPulldownItemCell"];
        _item_tableView.scrollEnabled = NO;
        item_tableView.dataSource = self;
        item_tableView.delegate = self;
        [self addSubview:item_tableView];
        _item_tableView = item_tableView;
    }
    return _item_tableView;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.clipsToBounds = YES;
        self.userInteractionEnabled = YES;
    }
    return self;
}

@end
