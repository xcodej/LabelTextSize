//
//  ViewController.m
//  LabelTextSize
//
//  Created by  XuJian on 21/03/2017.
//  Copyright © 2017  XuJian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel * aLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _aLabel = [[UILabel alloc] init];
    _aLabel.text = @"1ddsafadfadfadfadfadfadfadfadfasdfadsfasdfasdfadsfadfasdfas";
    CGFloat oneRowHeight = [@"111" boundingRectWithSize:CGSizeMake(100, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:_aLabel.font} context:nil].size.height;
    CGSize thisSize = [_aLabel.text boundingRectWithSize:CGSizeMake(100, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:_aLabel.font} context:nil].size;
    NSLog(@"%f\n%f",thisSize.width,thisSize.height);
    CGFloat realHeight = 0.0;
    if (thisSize.height <= oneRowHeight) {
        realHeight = oneRowHeight;
        _aLabel.numberOfLines = 1;
    } else {
        realHeight = oneRowHeight * 2;
        _aLabel.numberOfLines = 2;
    }
    _aLabel.frame = CGRectMake(100, 100, 100, realHeight);
    [self.view addSubview:_aLabel];
    NSLog(@"%ld",(long)[_aLabel numberOfLines]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
