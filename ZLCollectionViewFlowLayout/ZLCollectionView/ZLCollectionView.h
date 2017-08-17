//
//  ZLCollectionView.h
//  ZLCollectionViewFlowLayout
//
//  Created by YYKit on 2017/8/17.
//  Copyright © 2017年 zl. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ZLCollectionView : UIView

- (instancetype)initWithFrame:(CGRect)frame itemCount:(NSInteger)itemCount;
+ (instancetype)collectionViewWithFrame:(CGRect)frame itemCount:(NSInteger)itemCount;

@end
