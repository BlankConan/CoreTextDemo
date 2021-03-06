
//
//  CoreTextData.m
//  Test
//
//  Created by gangyi1 on 2021/11/8.
//

#import "CoreTextData.h"

@implementation CoreTextData

- (void)setCtFrame:(CTFrameRef)ctFrame
{
    if (_ctFrame != ctFrame)
    {
        if (_ctFrame != nil)
        {
            CFRelease(_ctFrame);
        }
        
        CFRetain(ctFrame);
        _ctFrame = ctFrame;
    }
}

- (void)dealloc {
    if (_ctFrame != nil) {
        CFRelease(_ctFrame);
        _ctFrame = nil;
    }
}

@end
