//
//  ZFTapGestureRecognizer.m
//  Test
//
//  Created by gangyi1 on 2021/11/1.
//

#import "TouchGesture.h"

@implementation TouchGesture

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Began __ %@ state:%lu view:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
//    NSLog(@"%@", [[touches anyObject] description]);
    
    // fire event js
    
//    [xxxx sssss:^{
//        
//        
//        
//        
//    }];
    
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Moved __ %@ state:%lu view:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    [super touchesEnded:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Ended __ %@ state:%lu view:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesCancelled:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    NSLog(@"-----%@ Cancelled __ %@ state:%lu view:%@", NSStringFromClass([self class]), self.name, self.state, [touch.view class]);
}


@end
