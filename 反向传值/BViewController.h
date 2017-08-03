//
//  BViewController.h
//  反向传值
//
//  Created by yg on 2017/8/3.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BViewController;
@protocol BViewControllerDelegate <NSObject>

-(void)BViewController:(BViewController *)bvc blarkValer:(NSString *)str;

@end

@interface BViewController : UIViewController
@property(nonatomic,weak)id<BViewControllerDelegate>delegate;
@end
