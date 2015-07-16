//
//  YBPulldownItemView.m
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import "YBPulldownItemView.h"
#import "UIView+Extension.h"

@interface YBPulldownItemView ()

@property (weak, nonatomic) UILabel * title_label;

@property (weak, nonatomic) UIView * line;

@end


@implementation YBPulldownItemView


-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.title_label.frame = self.bounds;
    
    self.title_label.x = 8;
    self.title_label.y = 0;
    self.title_label.width = self.width - self.title_label.x;
    self.title_label.height = self.height;
    
    self.line.x = 8;
    self.line.y = self.height;
    self.line.width = self.width - self.line.x;
    self.line.height = 0.5;
    
    
}

#pragma mark - Get and Set

-(void)setTitle:(NSString *)title{
    _title = title;
    self.title_label.text = _title;
}


-(UILabel *)title_label{
    if (_title_label == nil){
        UILabel *title_label = [[UILabel alloc]init];
        title_label.font = [UIFont systemFontOfSize:12];
        title_label.textAlignment = NSTextAlignmentLeft;
        title_label.textColor = [UIColor blackColor];
        [self addSubview:title_label];
        _title_label = title_label;
    }
    return _title_label;
}

-(UIView *)line{
    if (_line == nil){
        UIView *line = [[UIView alloc]init];
        line.backgroundColor = [UIColor grayColor];
        [self addSubview:line];
        _line = line;
    }
    return _line;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.clipsToBounds = YES;
    }
    return self;
}


@end
