//
//  MainViewController.m
//  ImageTextButton
//
//  Created by caisenchuan on 14-8-25.
//  Copyright (c) 2014年 caisenchuan. All rights reserved.
//

#import "MainViewController.h"
#import "ImageTextButton.h"

#define WEIBO_W                  41.5
#define QQ_W                     32

#define WEIBO_H                  33
#define QQ_H                     32

#define qqLogin_Btn_Frame        CGRectMake(0,0,QQ_W,QQ_H)
#define weiboLogin_Btn_Frame     CGRectMake(0,0,WEIBO_W,WEIBO_H)

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    ImageTextButton *loginWithQQBtn = [[ImageTextButton alloc]initWithImage:[UIImage imageNamed:@"LogIn_register_index_IconQQ"] setSize:qqLogin_Btn_Frame.size andText:@"QQ登录" margin:5];
    [loginWithQQBtn.imageButton addTarget:self action:@selector(qqLogin) forControlEvents:UIControlEventTouchUpInside];
    loginWithQQBtn.frame = CGRectMake(60, 50, 30, 30);
    [self.view addSubview:loginWithQQBtn];
    
    ImageTextButton *loginWithWbBtn = [[ImageTextButton alloc]initWithImage:[UIImage imageNamed:@"LogIn_register_index_IconSina"] setSize:weiboLogin_Btn_Frame.size andText:@"微博登录" margin:5];
    [loginWithWbBtn.imageButton addTarget:self action:@selector(weiboLogin) forControlEvents:UIControlEventTouchUpInside];
    loginWithWbBtn.frame = CGRectMake(200, 50, 30, 30);
    [self.view addSubview:loginWithWbBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)qqLogin
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"QQ登录"
                          message:nil
                          delegate:nil
                          cancelButtonTitle:@"确认"
                          otherButtonTitles:nil];
    [alert show];
}

-(void)weiboLogin
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"微博登录"
                          message:nil
                          delegate:nil
                          cancelButtonTitle:@"确认"
                          otherButtonTitles:nil];
    [alert show];
}

@end
