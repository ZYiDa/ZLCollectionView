//
//  ZLCollectionView.m
//  ZLCollectionViewFlowLayout
//
//  Created by YYKit on 2017/8/17.
//  Copyright © 2017年 zl. All rights reserved.
//

#import "ZLCollectionView.h"
#import "ZLFlowLayout.h"

static NSString * identifier = @"collecitonView_cell";
@interface ZLCollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic,strong) UICollectionView *mainCollectionView;
@property (nonatomic,assign) NSInteger itemCount;
@property (nonatomic,assign) CGRect collectionViewFrame;

@end

@implementation ZLCollectionView


+ (instancetype)collectionViewWithFrame:(CGRect)frame itemCount:(NSInteger)itemCount
{
    return [[self alloc]initWithFrame:frame itemCount:itemCount];
}

- (instancetype)initWithFrame:(CGRect)frame itemCount:(NSInteger)itemCount
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.itemCount = itemCount;
        self.collectionViewFrame = frame;
        [self createCollectionViewStyle];
    }
    return self;
}


- (void)createCollectionViewStyle
{
    ZLFlowLayout *layout = [[ZLFlowLayout alloc]init];
    self.mainCollectionView = [[UICollectionView alloc]initWithFrame:self.collectionViewFrame collectionViewLayout:layout];
    self.mainCollectionView.delegate = self;
    self.mainCollectionView.dataSource = self;
    self.mainCollectionView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.mainCollectionView.showsHorizontalScrollIndicator = NO;
    [self addSubview:self.mainCollectionView];

    NSLog(@"%f -- %f",layout.itemSize.width,layout.itemSize.height); //375.404


    //注册cell
    [self.mainCollectionView registerClass:[UICollectionViewCell class]
                forCellWithReuseIdentifier:identifier];
}

- (NSInteger )numberOfItemsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger )collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.itemCount;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier
                                                                           forIndexPath:indexPath];
    //这一步，防止cell上面的内容发生重叠
    for (UIView * view in cell.subviews)
    {
        [view removeFromSuperview];
    }

    cell.backgroundColor = [UIColor lightGrayColor];
    cell.layer.masksToBounds = YES;
    cell.layer.cornerRadius = 5.0f;

    
    NSLog(@"Cell:%f--%f",cell.frame.size.width,cell.frame.size.height);
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedItems(indexPath);
}

- (void)didSelectedItemsWithBlock:(DidSelectedItems)selectedItems
{
    self.selectedItems = selectedItems;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
