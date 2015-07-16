//
//  YBPulldownTitleButton.m
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import "YBPulldownTitleButton.h"

#import "YBPulldownItem.h"

#import "UIView+Extension.h"


@interface YBPulldownTitleButton ()


@property (weak, nonatomic) UIView * line;


@end

@implementation YBPulldownTitleButton


-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.line.width = 0.5;
    self.line.height = self.height * 0.8f;
    self.line.x = self.width + 0.5;
    self.line.centerY = self.height / 2.0f;
    
    CGFloat title_label_width = self.titleLabel.width;
    
    CGFloat imageView_width = self.imageView.width;
    
    CGFloat total_width = title_label_width + imageView_width + 10;
    
    if (total_width > self.width){
        total_width = self.width ;
        self.titleLabel.width = self.width - 10 - imageView_width;
    }
    
    self.titleLabel.x = self.width / 2.0 - total_width / 2.0;
    
    self.imageView.x = self.titleLabel.x + self.titleLabel.width + 10;
}


#pragma mark - Set and Get


-(void)setItem:(YBPulldownItem *)item{
    _item = item;
    
    [self setTitle:_item.item_title forState:UIControlStateNormal];
}


-(UIView *)line{
    if (_line == nil){
        UIView *line = [[UIView alloc]init];
        line.backgroundColor = [UIColor lightGrayColor];
        line.alpha = 0.8;
        [self addSubview:line];
        _line = line;
    }
    return _line;
}


-(void)setHighlighted:(BOOL)highlighted{
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setImage:[UIImage imageNamed:@"share_category_icon_triangle_0"] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"share_category_icon_triangle_1"] forState:UIControlStateSelected];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor colorWithRed:0 green:0.78 blue:0.19 alpha:1] forState:UIControlStateSelected];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
//        self.clipsToBounds = YES;
    }
    return self;
}




@end
