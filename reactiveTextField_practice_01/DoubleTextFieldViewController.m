//
//  DoubleTextFieldViewController.m
//  reactiveTextField_practice_01
//
//  Created by WatanabeYuuichi on 2017/01/14.
//  Copyright © 2017年 WatanabeYuuichi. All rights reserved.
//

#import "DoubleTextFieldViewController.h"
#import "YWTextField.h"

@interface DoubleTextFieldViewController ()

@property (weak, nonatomic) IBOutlet YWTextField    *idTextField;
@property (weak, nonatomic) IBOutlet UIView         *idMarkupView;
@property (weak, nonatomic) IBOutlet YWTextField    *idCheckField;
@property (weak, nonatomic) IBOutlet UIView         *checkMarkupView;

@end

@implementation DoubleTextFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _idTextField.markupView     = _idMarkupView;
    _idCheckField.markupView    = _checkMarkupView;
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


/**
 * sample2 ...画面にtextFieldが複数なら、カスタムクラスにしてプロパティに持たせればいい
 */


#pragma mark - UITextFieldDelegate

// 編集開始時
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if ([textField isMemberOfClass:[YWTextField class]]) {
        YWTextField * ywTextField = (YWTextField *)textField;
        if (ywTextField.markupView)
            ywTextField.markupView.backgroundColor = [UIColor blueColor];
    }
    textField.returnKeyType = UIReturnKeyDone;
}


//編集終了時
- (BOOL)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isMemberOfClass:[YWTextField class]]) {
        YWTextField * ywTextField = (YWTextField *)textField;
        ywTextField.markupView.backgroundColor = [UIColor lightGrayColor];
    }
    return YES;
}

// returnを押された時
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder]; // キーボードをしまう
    return YES;
}



@end
