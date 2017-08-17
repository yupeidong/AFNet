//
//  ViewController.m
//  XMPP
//
//  Created by 喻沛 on 2017/7/25.
//  Copyright © 2017年 喻沛. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "XPHttpTool.h"
#import "UIColor+Extension.m"
@interface ViewController ()

@property (nonatomic, strong) UITextField * textField;
@property (nonatomic, strong) UIButton *  button ;
@property (nonatomic, copy) NSString * string;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    _textField = [[UITextField alloc] init];
    _textField.placeholder = @"请输入账号";
    _textField.layer.cornerRadius = 1;
    _textField.layer.borderWidth = 0.5;
    _textField.textColor = [UIColor grayColor];
    [self.view addSubview:_textField];
    [_textField mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.view.mas_centerX).offset(0);
        make.top.equalTo(self.view.mas_top).offset(200);
        make.width.mas_equalTo(@200);
        make.height.mas_equalTo(@40);
    }];
    
    [[self.textField rac_signalForControlEvents:UIControlEventEditingChanged] subscribeNext:^(UITextField * texts) {
     
        self.string = texts.text;
    }];
 
    _button = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button setBackgroundImage:[UIColor redColor].image forState:UIControlStateNormal];
    [_button setTitle:@"确定" forState:UIControlStateNormal];
    [self.view addSubview:_button];
    [_button mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.textField.mas_bottom).offset(20);
        make.centerX.equalTo(self.view.mas_centerX).offset(0);
        make.height.mas_equalTo(@40);
        make.width.mas_equalTo(@160);
    }];
    [[_button rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        
        NSLog(@"监听按钮事件");
        
    }];
    
    RAC(self, button.enabled) = [RACSignal combineLatest:@[RACObserve(self, string)] reduce:^id(NSString * text){
        
        BOOL enble = false;
        enble = text.length > 0;
        return @(enble);
    }];
    
    


//冒泡排序
    NSArray * array = @[@89,@90,@77];
    NSMutableArray * mutableArray = [array mutableCopy];
    for (int i = 0; i < mutableArray.count; i ++) {
        
        for (int j = 0; j < mutableArray.count - 1 - i; j ++) {
            
            NSInteger a = [mutableArray[j] integerValue];
            NSInteger b = [mutableArray[j + 1] integerValue];
            if (a > b) {
                
                [mutableArray exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
            }
        }
    }
    NSLog(@"%@",mutableArray);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
