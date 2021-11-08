//
//  UITouch+TouchGesture.m
//  Test
//
//  Created by gangyi1 on 2021/11/4.
//

#import "UITouch+TouchGesture.h"
#import <objc/runtime.h>

@implementation UITouch (TouchGesture)


- (NSNumber *)identifier
{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setIdentifier:(NSNumber *)identifier
{
    objc_setAssociatedObject(self, @selector(identifier), identifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSNumber *)stopPropagation
{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setStopPropagation:(NSNumber *)stopPropagation
{
    objc_setAssociatedObject(self, @selector(stopPropagation), stopPropagation, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
