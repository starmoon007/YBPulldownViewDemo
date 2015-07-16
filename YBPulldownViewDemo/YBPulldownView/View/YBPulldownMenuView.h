//
//  YBPulldownMenuView.h
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YBPulldownMenuView;

@protocol YBPulldownMenuViewDelegate <NSObject>

- (void)menuView:(YBPulldownMenuView *)menuView didSeletedItemtIndexPath:(NSIndexPath *)indexPath;

@end


@interface YBPulldownMenuView : UIView

@property (assign, nonatomic) id <YBPulldownMenuViewDelegate> delegate;

@property (strong, nonatomic) NSMutableArray * items;

@property (assign, nonatomic) CGFloat unfold_height;

@property (assign, nonatomic) CGFloat item_height;


@end
