//
//  ZLCollectionView.h
//  ZLCollectionViewFlowLayout
//
//  Created by YYKit on 2017/8/17.
//  Copyright © 2017年 zl. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^DidSelectedItems)(NSIndexPath *indexPath);
@interface ZLCollectionView : UIView

@property (nonatomic,copy) DidSelectedItems selectedItems;
- (void)didSelectedItemsWithBlock:(DidSelectedItems)selectedItems;

- (instancetype)initWithFrame:(CGRect)frame itemCount:(NSInteger)itemCount;
+ (instancetype)collectionViewWithFrame:(CGRect)frame itemCount:(NSInteger)itemCount;

@end
