//
//  BViewController.m
//  反向传值
//
//  Created by yg on 2017/8/3.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc ]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(goback)];
}
//点击左上角的返回按钮
-(void)goback
{
    [self.delegate BViewController:self blarkValer:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
