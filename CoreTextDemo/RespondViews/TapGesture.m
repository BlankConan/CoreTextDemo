//
//  TapGesture.m
//  Test
//
//  Created by gangyi1 on 2021/11/4.
//

#import "TapGesture.h"

@implementation TapGesture

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Began __ name:%@ state:%lu firstRes:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
//    NSLog(@"%@", [[touches anyObject] description]);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Moved __ name:%@ state:%lu firstRes:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Ended __ name:%@ state:%lu firstRes:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    [super touchesCancelled:touches withEvent:event];
    NSLog(@"-----%@ Cancelled __ name:%@ state:%lu firstRes:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
}


@end
