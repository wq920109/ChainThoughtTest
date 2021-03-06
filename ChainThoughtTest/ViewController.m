//
//  ViewController.m
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/21.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Test.h"
#import "UILabel+Test.h"
#import "UIButton+Test.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self crateViews];
}

- (void)crateViews
{
    [UILabel initUILabel:^(UILabel *label){
        
        label.KFrame(CGRectMake(0, 100, 100, 100))
        .KBackgroundColor([UIColor redColor])
        .KText(@"hello")
        .KTextColor([UIColor whiteColor])
        .KTextAlignment(1)
        .KAddSubView(self.view);
        
    }];
    
    [UIImageView initUIImageView:^(UIImageView *imageView){
        
        imageView.KFrame(CGRectMake(0, 200, 200, 400))
        .KImageName(@"testtest")
        .KAddSubView(self.view);
        
    }];
    
    [UIButton initUIButton:^(UIButton *button){
        
        button.KFrame(CGRectMake(100, 100, 100, 100))
        .KBackgroundColor([UIColor brownColor])
        .KSelect(@selector(click))
        .KAddSubView(self.view);
        
    }];
}

- (void)click
{
    [Person initPerson:^(Person *person){
       
        person.KNameString(@"张三李四王二")
        .KSexString(@"男女");
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
