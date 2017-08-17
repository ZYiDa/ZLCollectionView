# ZLCollectionView
> 仿QQ/QQ空间顶部提示窗

> 下面是示意图

> ![](https://github.com/ZYiDa/ZLCollectionView/raw/master/QQ20170817-152627.gif) 

> [这是我的简书地址](http://www.jianshu.com/u/cd395981b31d "谢谢访问") ，欢迎各位关注，我会不定期更新的。

> 你可以导入```#import "ZLCollectionView.h"```,然后通过下面的方式来使用。

```
ZLCollectionView *collectionView = [ZLCollectionView collectionViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) itemCount:30];
[collectionView didSelectedItemsWithBlock:^(NSIndexPath *indexPath) {
    NSLog(@"ItemTag:%ld",indexPath.item);
}];
[self.view addSubview:collectionView];
```

> 你还可以根据自己的需求来修改样式，代码的不足之处，还请各位多多指教，
