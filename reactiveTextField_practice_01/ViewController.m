//
//  ViewController.m
//  reactiveTextField_practice_01
//
//  Created by WatanabeYuuichi on 2017/01/14.
//  Copyright © 2017年 WatanabeYuuichi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UIView *idTextFieldLineView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didEndOnEdit:(UITextField *)sender {
}



/**
 * sample1 ...もし画面にtextFieldが1つなら、個別に書き込めばいい
 */


#pragma mark - UITextFieldDelegate


// 編集開始時
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    textField.returnKeyType = UIReturnKeyDone;
    _idTextFieldLineView.backgroundColor = [UIColor blueColor];
}


//編集終了時
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    _idTextFieldLineView.backgroundColor = [UIColor lightGrayColor];
    return YES;
}

// returnを押された時
- (BOOL)textFieldShouldReturn:(UITextField *)textField 
{
    [textField resignFirstResponder]; // キーボードをしまう
    
    return YES;
}




@end
