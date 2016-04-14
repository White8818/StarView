//
//  StarView.h
//  Pugongying
//
//  Created by white on 15/11/9.
//  Copyright (c) 2015年 white8818. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarView : UIView
/**
 *  初始化
 *
 *  @param frame 五角星的frame
 *
 *  @return return value description
 */
+ (instancetype)starWithFrame:(CGRect)frame;
/**
 *  百分比, 满星是1.0, 根据需求设置比例值
 */
@property (nonatomic, assign) CGFloat avgScore;

@end
