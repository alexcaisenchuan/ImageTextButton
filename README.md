ImageTextButton
===============

Image Button with Label under it

Example
===============

CGSize size = CGSizeMake(32, 32);
ImageTextButton *btn = [[ImageTextButton alloc]initWithImage:[UIImage imageNamed:@"icon"] setSize:size andText:@"Login" margin:5];
[btn.imageButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
btn.frame = CGRectMake(60, 50, 30, 30);
[self.view addSubview:btn];
