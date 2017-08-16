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
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    

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
