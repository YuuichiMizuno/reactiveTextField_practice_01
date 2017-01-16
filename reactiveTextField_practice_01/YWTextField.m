//
//  YWTexyField.m
//  reactiveTextField_practice_01
//
//  Created by WatanabeYuuichi on 2017/01/14.
//  Copyright © 2017年 WatanabeYuuichi. All rights reserved.
//

#import "YWTextField.h"

@implementation YWTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

// TODO: init ベースカラーを取得する(別のカラークラスから)

/** 
 編集開始時 markupView 色変更(オン)
 @warning 
    Please execute from the main thread.
 */
- (void)textFieldDidBeginEditing
{
    [self markupViewAnimationWithDidbigin:YES];
}

/** 
 編集終了時 markupView 色変更(オフ)
 @warning 
    Please execute from the main thread.
 */
- (void)textFieldDidEndEditing
{
    [self markupViewAnimationWithDidbigin:NO];
}



- (void) markupViewAnimationWithDidbigin:(BOOL)didBegin
{
    if(self.markupView) {
        CABasicAnimation *  animation = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
                            animation.fromValue     = didBegin
                                ?(id)[UIColor lightGrayColor].CGColor
                                :(id)[UIColor blueColor].CGColor;
                            animation.toValue       = didBegin
                                ?(id)[UIColor blueColor].CGColor
                                :(id)[UIColor lightGrayColor].CGColor;
                            animation.duration      = didBegin
                                ? 0.12
                                : 0.36;
                            animation.repeatCount   = 1;
                            animation.autoreverses  = NO;
                            animation.timingFunction = didBegin
                                ?[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]
                                :[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
                            animation.removedOnCompletion = NO;
                            animation.fillMode = kCAFillModeForwards;
        
        CALayer         *   layer = self.markupView.layer;
                           [layer addAnimation:animation forKey:@"backgroundColor"];
    }
}


//TODO: UIButton -> UIPickerの場合を書く

// TODO: 日報にまとめたいものを書く

// TODO: UITextFieldにキーボードの種類もTipsに書く



@end
