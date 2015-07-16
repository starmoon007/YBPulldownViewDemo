//
//  YBPulldownItemCell.m
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import "YBPulldownItemCell.h"

@interface YBPulldownItemCell ()

@property (weak, nonatomic) IBOutlet UILabel *title_label;

@end


@implementation YBPulldownItemCell

- (void)setTitle:(NSString *)title{
    _title = title;
    
    self.title_label.text = _title;
    
}

@end
