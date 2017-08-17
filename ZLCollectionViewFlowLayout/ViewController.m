//
//  ViewController.m
//  ZLCollectionViewFlowLayout
//
//  Created by YYKit on 2017/8/17.
//  Copyright © 2017年 zl. All rights reserved.
//

#import "ViewController.h"
#import "ZLCollectionView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ZLCollectionView *collectionView = [ZLCollectionView collectionViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) itemCount:30];
    [self.view addSubview:collectionView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
