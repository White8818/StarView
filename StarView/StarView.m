//
//  StarView.m
//  Pugongying
//
//  Created by white on 15/11/9.
//  Copyright (c) 2015年 white8818. All rights reserved.
//

#import "StarView.h"

#define Foreground_Star_Image_Name @"icon_star_yellow"
#define Background_Star_Image_Name @"icon_star_gray"

@interface StarView ()

@property (nonatomic, strong) UIView *foregroundStarView;
@property (nonatomic, strong) UIView *backgroundStarView;

@end

@implementation StarView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureUI];
    }
    return self;
}

+ (instancetype)starWithFrame:(CGRect)frame {
    return [[StarView alloc] initWithFrame:frame];
}

- (UIView *)createStarViewWithImage:(NSString *)imageName {
    UIView *view = [[UIView alloc] initWithFrame:self.bounds];
    view.clipsToBounds = YES;
    view.backgroundColor = [UIColor clearColor];
    for (NSInteger i = 0; i < 5; i ++)
    {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
        imageView.frame = CGRectMake(i * self.bounds.size.width / 5, 0, self.bounds.size.width / 5, self.bounds.size.height);
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [view addSubview:imageView];
    }
    return view;
}

- (void)configureUI {
    self.foregroundStarView = [self createStarViewWithImage:Foreground_Star_Image_Name];
    self.backgroundStarView = [self createStarViewWithImage:Background_Star_Image_Name];
    [self addSubview:_backgroundStarView];
    [self addSubview:_foregroundStarView];
}

- (void)setAvgScore:(CGFloat)avgScore {
    self.foregroundStarView.frame = CGRectMake(0, 0, self.bounds.size.width * (avgScore / 5), self.bounds.size.height);
}
@end












