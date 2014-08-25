//
//  ImageTextButton.h
//
//  Created by caisenchuan on 14-7-25.
//  Copyright (c) 2014年 caisenchuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageTextButton : UIView

@property (strong, nonatomic) UIButton *imageButton;
@property (strong, nonatomic) UILabel *label;

//Init the view with the image and the label text
//Params:
//image : The button's image
//imageSize : The size of the image
//text: The label's text
//margin: The margin between image and label
-(id)initWithImage:(UIImage *)image setSize:(CGSize)imageSize andText:(NSString *)text margin:(CGFloat)margin;

@end
