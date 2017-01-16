//
//  YWTexyField.h
//  reactiveTextField_practice_01
//
//  Created by WatanabeYuuichi on 2017/01/14.
//  Copyright © 2017年 WatanabeYuuichi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YWTextField : UITextField

@property(readwrite)     UIView * markupView;

/** 
 編集開始時 markupView 色変更(オン)
 @warning 
    Please execute from the main thread.
 */
- (void)textFieldDidBeginEditing;

/** 
 編集終了時 markupView 色変更(オフ)
 @warning 
    Please execute from the main thread.
 */
- (void)textFieldDidEndEditing;

@end
