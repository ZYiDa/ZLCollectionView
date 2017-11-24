//
//  CustomCollectionViewCell.m
//  TestView
//
//  Created by YYKit on 2017/11/24.
//  Copyright © 2017年 zl. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import <Masonry/Masonry.h>
@implementation CustomCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imgV       = [UIImageView new];
        imgV.backgroundColor    = [UIColor redColor];
        self.testImageView      = imgV;
        [self addSubview:self.testImageView];
    }
    return self;
}

- (void)layoutSubviews{
    [self.testImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@100);
        make.height.equalTo(@50);
        make.centerX.equalTo(self);
        make.centerY.equalTo(self);
    }];
}
@end
