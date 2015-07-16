//
//  YBPulldownItem.m
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import "YBPulldownItem.h"

@implementation YBPulldownItem


-(NSMutableArray *)subitems{
    if (_subitems == nil){
        _subitems = [[NSMutableArray alloc]init];
    }
    return _subitems;
}

+ (instancetype)itemWithDic:(NSDictionary *)dic{
    return [[self alloc]initWithDic:dic];
}


- (instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        self.item_title = dic[@"item_title"];
        NSArray *subItems = dic[@"subItem"];
        
        NSUInteger count = subItems.count;
        for (int i=0; i<count; i++) {
            NSString *sub_item_title = subItems[i];
            [self.subitems addObject:sub_item_title];
        }
    }
    return self;
}


@end
