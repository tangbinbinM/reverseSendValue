//
//  ViewController.m
//  反向传值
//
//  Created by yg on 2017/8/3.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
#import "KBlockViewController.h"
@interface ViewController ()<BViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lableText;

@end

@implementation ViewController
- (IBAction)delegateBtn:(id)sender {
    BViewController *bvc = [[BViewController alloc] init];
    bvc.delegate = self;
    [self.navigationController pushViewController:bvc animated:YES];
}
#pragma mark BViewControllerDelegate
-(void)BViewController:(BViewController *)bvc blarkValer:(NSString *)str{
    self.lableText.text = str;
}


- (IBAction)blockBtn:(id)sender {
    KBlockViewController *kbvc = [[KBlockViewController alloc] init];
    __weak __typeof(self)weakSelf = self;
    kbvc.valueBlock = ^(NSString * str){
        weakSelf.lableText.text = str;
    };
    [self.navigationController pushViewController:kbvc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
