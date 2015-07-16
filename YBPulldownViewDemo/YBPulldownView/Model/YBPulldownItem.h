//
//  YBPulldownItem.h
//  YBPulldownView
//
//  Created by Starmoon on 15/7/15.
//  Copyright (c) 2015年 macbook air. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBPulldownItem : NSObject

@property (copy, nonatomic) NSString * item_title;

@property (strong, nonatomic) NSMutableArray * subitems;

+ (instancetype)itemWithDic:(NSDictionary *)dic;

@end
