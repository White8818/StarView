//
//  StarView.h
//  Pugongying
//
//  Created by white on 15/11/9.
//  Copyright (c) 2015年 white8818. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarView : UIView

+ (instancetype)starWithFrame:(CGRect)frame;

@property (nonatomic, assign) CGFloat avgScore;//分值

@end
