//
//  BlueView.m
//  Test
//
//  Created by gangyi1 on 2021/11/2.
//

#import "BlueView.h"
#import "TouchGesture.h"

@interface BlueView ()


@end

@implementation BlueView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        
//        TouchGesture *tap1 = [[TouchGesture alloc] initWithTarget:self action:@selector(tap1ges:)];
//        //        tap1.cancelsTouchesInView = NO;
//        tap1.name = NSStringFromClass(self.class);
//        //        _tap1.delegate = self;
//        tap1.delaysTouchesBegan = YES;
//        [self addGestureRecognizer:tap1];
//
        
    }
    return self;
}


- (void)tap1ges:(TouchGesture *)tap
{
    NSLog(@"%@ tap", tap.name);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"-----Blue Began");
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    NSLog(@"-----Blue Moved");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    NSLog(@"-----Blue Ended");
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesCancelled:touches withEvent:event];
    NSLog(@"-----Blue Cancelled");
}

@end
