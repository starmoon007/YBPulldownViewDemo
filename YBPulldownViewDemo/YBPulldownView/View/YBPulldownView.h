//
//  YBPulldownView.h
//  YBPulldownView
//
//  Created by Starmoon on 15/7/14.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "YBPulldownItem.h"

@class YBPulldownView;

/** 标签按钮高度 */
#define Pulldown_TitleButton_Height 44

@protocol YBPulldownViewDelegate <NSObject>
@optional
- (void)pulldown:(YBPulldownView *)pulldownView didSeletedItem:(YBPulldownItem *)item atIndexPath:(NSIndexPath *)indexPath;

@end


@interface YBPulldownView : UIView

@property (assign, nonatomic) id<YBPulldownViewDelegate> delegate;

/** 选项置顶 */
@property (assign, nonatomic) BOOL item_top;


@property (copy, nonatomic) NSString * plist_file_name;

@end
