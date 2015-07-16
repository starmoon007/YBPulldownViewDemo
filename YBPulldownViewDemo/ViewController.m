//
//  ViewController.m
//  YBPulldownViewDemo
//
//  Created by Starmoon on 15/7/16.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import "ViewController.h"

#import "YBPulldownView.h"

@interface ViewController ()<YBPulldownViewDelegate>

@property (weak, nonatomic) YBPulldownView * pulldown_view;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pulldown_view.plist_file_name = @"YBPulldownItems";
}

#pragma mark - YBPulldownViewDelegate

- (void)pulldown:(YBPulldownView *)pulldownView didSeletedItem:(YBPulldownItem *)item atIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@ %@",item.item_title , item.subitems[indexPath.row] );
    
}

-(YBPulldownView *)pulldown_view{
    if (_pulldown_view == nil){
        YBPulldownView *pulldown_view = [[YBPulldownView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 44)];
        pulldown_view.delegate = self;
        pulldown_view.item_top = YES;
        [self.view addSubview:pulldown_view];
        _pulldown_view = pulldown_view;
    }
    return _pulldown_view;
}

@end
