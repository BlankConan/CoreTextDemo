//
//  RedView.m
//  Test
//
//  Created by gangyi1 on 2021/10/28.
//

#import "RedView.h"
#import "TouchGesture.h"
#import "TapGesture.h"
#import "LongPressgesture.h"
#import "UITouch+TouchGesture.h"

@interface RedView ()<UIGestureRecognizerDelegate>

@end

@implementation RedView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        
//        TouchGesture *touch = [[TouchGesture alloc] initWithTarget:self action:@selector(touchredges:)];
//        touch.name = @"红";
//        touch.delegate = self;
//        [self addGestureRecognizer:touch];
        
//        LongPressgesture *longpress = [[LongPressgesture alloc] initWithTarget:self
//                                                                        action:@selector(longpressr:)];
//        longpress.name = @"红";
//        [self addGestureRecognizer:longpress];
        
//        TapGesture *tap = [[TapGesture alloc] initWithTarget:self action:@selector(taptapr:)];
//        tap.name = @"红";
////        tap.delegate = self;
//        [self addGestureRecognizer:tap];
        
//        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
//        [self addGestureRecognizer:pan];
        
    }
    return self;
}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    if ([gestureRecognizer isKindOfClass:[TouchGesture class]]) {
//        return NO;
//    }
//
//    return YES;
//}


#pragma mark - Gesture Event

//- (void)taptapr:(TapGesture *)tap
//{
//    NSLog(@"%@ tap_red", tap.name);
//
//}
//
//- (void)touchredges:(TouchGesture *)touch
//{
//    NSLog(@"%@ touch_red", touch.name);
//
//}

//- (void)longpressr:(LongPressgesture *)longp
//{
//    NSLog(@"%@ long_red", longp.name);
//}

//- (void)pan:(UIPanGestureRecognizer *)pan
//{
//    switch (pan.state) {
//        case UIGestureRecognizerStateBegan:
//        {
//            NSLog(@"RedView move ges begin");
//        }
//            break;
//        case UIGestureRecognizerStateChanged:
//        {
//            NSLog(@"RedView move ges ....");
//        }
//            break;
//        case UIGestureRecognizerStateEnded:
//        {
//            NSLog(@"RedView move ges ended");
//        }
//            break;
//        case UIGestureRecognizerStateCancelled:
//        {
//            NSLog(@"RedView move ges cancelled");
//        }
//            break;
//        default:
//        {
//
//        }
//            break;
//    }
//}


#pragma mark -

//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
//{
//    return NO;
//}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    if ([gestureRecognizer isKindOfClass:[TouchGesture class]]
////        && [touch.view.class isKindOfClass:self.class]
//        )
//    {
//        return NO;
//    }
//    return YES;
//}

#pragma mark -

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"-----Red Touch Begin");
////    [super touchesBegan:touches withEvent:event];
//
//}
//
//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"-----Red Touch Moved");
////    [super touchesMoved:touches withEvent:event];
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"-----Red Touch Ended");
////    [super touchesEnded:touches withEvent:event];
//}
//
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"-----Red Touch Cancelled");
////    [super touchesCancelled:touches withEvent:event];
//}

@end
