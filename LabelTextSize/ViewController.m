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
@property (nonatomic, strong) UILabel * spaceLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
//    [super viewDidLoad];
//    _aLabel = [[UILabel alloc] init];
//    _aLabel.text = @"1ddsafadfadfadfadfadfadfadfadfasdfadsfasdfasdfadsfadfasdfas";
//    CGFloat oneRowHeight = [@"111" boundingRectWithSize:CGSizeMake(100, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:_aLabel.font} context:nil].size.height;
//    CGSize thisSize = [_aLabel.text boundingRectWithSize:CGSizeMake(100, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:_aLabel.font} context:nil].size;
//    NSLog(@"%f\n%f",thisSize.width,thisSize.height);
//    CGFloat realHeight = 0.0;
//    if (thisSize.height <= oneRowHeight) {
//        realHeight = oneRowHeight;
//        _aLabel.numberOfLines = 1;
//    } else {
//        realHeight = oneRowHeight * 2;
//        _aLabel.numberOfLines = 2;
//    }
//    _aLabel.frame = CGRectMake(100, 100, 100, realHeight);
//    [self.view addSubview:_aLabel];
//    NSLog(@"%ld",(long)[_aLabel numberOfLines]);
    
    _spaceLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 300)];
    _spaceLabel.numberOfLines = 0;
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:@"12312312313123123123123123123123567777777"];
    NSMutableParagraphStyle * pStyle = [[NSMutableParagraphStyle alloc] init];
    [pStyle setLineSpacing:10.0f];
    [pStyle setFirstLineHeadIndent:10.0f];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:pStyle range:NSMakeRange(0, attributedString.length)];
    _spaceLabel.attributedText = attributedString;
    [self.view addSubview:_spaceLabel];
//    [_spaceLabel sizeToFit];
    
}


@end
