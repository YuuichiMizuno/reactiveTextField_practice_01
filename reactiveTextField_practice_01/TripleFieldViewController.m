//
//  TripleFieldViewController.m
//  reactiveTextField_practice_01
//
//  Created by WatanabeYuuichi on 2017/01/15.
//  Copyright © 2017年 WatanabeYuuichi. All rights reserved.
//

#import "TripleFieldViewController.h"
#import "YWTextField.h"

@interface TripleFieldViewController ()
@property (weak, nonatomic) IBOutlet YWTextField    *idField;
@property (weak, nonatomic) IBOutlet UIView         *idMarkupView;
@property (weak, nonatomic) IBOutlet YWTextField    *passField;
@property (weak, nonatomic) IBOutlet UIView         *pwMarkupView;

@end

@implementation TripleFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setup];
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



- (void) setup
{
    [_idField   setMarkupView:_idMarkupView];
    [_passField setMarkupView:_pwMarkupView];
}




/**
 * sample3 ...汎用的に作るなら、色変更はそのクラスで行えばいい
 */


#pragma mark - UITextFieldDelegate

// 編集開始時
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    // 下線の色を変更
    if ([textField isMemberOfClass:[YWTextField class]])
        [(YWTextField *)textField textFieldDidBeginEditing];

    textField.returnKeyType = UIReturnKeyDone;
}


//編集終了時
- (BOOL)textFieldDidEndEditing:(UITextField *)textField
{
    // 下線の色を変更
    if ([textField isMemberOfClass:[YWTextField class]])
        [(YWTextField *)textField textFieldDidEndEditing];

    return YES;
}

// returnを押された時
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder]; // キーボードをしまう
    return YES;
}





@end
