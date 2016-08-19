//
//  InterfaceController.m
//  GroupBall WatchKit Extension
//
//  Created by Anthony on 16/8/19.
//  Copyright © 2016年 SLZeng. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *ball;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

#pragma mark - 监听方向按钮
/**
 *  上
 */
- (IBAction)up {
    
    // 设置动画时长2.0秒
    [self animateWithDuration:2.0 animations:^{
        // 设置控件 垂直方向的位置
        [self.ball setVerticalAlignment:WKInterfaceObjectVerticalAlignmentTop];
    }];
}

/**
 *  下
 */
- (IBAction)down {
    
    [self animateWithDuration:2.0 animations:^{
        [self.ball setVerticalAlignment:WKInterfaceObjectVerticalAlignmentBottom];
    }];
}

/**
 *  左
 */
- (IBAction)left {
    
    [self animateWithDuration:2.0 animations:^{
        // 设置控件 水平方向的位置
        [self.ball setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentLeft];
    }];
}

/**
 *  右
 */
- (IBAction)rigth {
    
    [self animateWithDuration:2.0 animations:^{
        [self.ball setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentRight];
    }];
}

@end



