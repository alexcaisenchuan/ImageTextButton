//
//  ImageTextButton.m
//
//  Created by caisenchuan on 14-7-25.
//  Copyright (c) 2014年 caisenchuan. All rights reserved.
//

#import "ImageTextButton.h"

@implementation ImageTextButton

-(id)initWithImage:(UIImage *)image setSize:(CGSize)imageSize andText:(NSString *)text margin:(CGFloat)margin
{
    //Create label & get it's size
    _label = [[UILabel alloc]init];
    _label.text = text;
    _label.font = [UIFont systemFontOfSize:12];
    _label.textColor = [UIColor whiteColor];
    [_label sizeToFit];
    CGSize labelSize = _label.frame.size;
    
    //Set the image size
    _imageButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, imageSize.width, imageSize.height)];
    [_imageButton setImage:image forState:UIControlStateNormal];
    
    //Calc whole view's size
    CGFloat width = MAX(imageSize.width, labelSize.width);
    CGFloat height = imageSize.height + labelSize.height + margin;
    CGRect frame = CGRectMake(0, 0, width, height);
    
    //Set position of label and image
    CGFloat label_x = 0;
    CGFloat label_y = imageSize.height + margin;
    CGFloat image_x = 0;
    CGFloat image_y = 0;
    if (labelSize.width > imageSize.width) {
        image_x = (labelSize.width - imageSize.width) / 2;
    } else {
        label_x = (imageSize.width - labelSize.width) / 2;
    }
    //Rest frame
    _label.frame = CGRectMake(label_x, label_y, labelSize.width, labelSize.height);
    _imageButton.frame = CGRectMake(image_x, image_y, imageSize.width, imageSize.height);
    
    //Add view
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:_imageButton];
        [self addSubview:_label];
    }
    
    return self;
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //...
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
