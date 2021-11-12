//
//  CTDisplayView.m
//  Test
//
//  Created by gangyi1 on 2021/11/8.
//

#import "CTDisplayView.h"
#import <CoreText/CoreText.h>

@interface CTDisplayView ()

@end

@implementation CTDisplayView


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    
    if (self.data) {
        CTFrameDraw(self.data.ctFrame, context);
    }
    
    
//    CGMutablePathRef path = CGPathCreateMutable();
////    CGPathAddRect(path, NULL, rect);
//    CGPathAddEllipseInRect(path, NULL, self.bounds);
//
////    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:@"Hello world!"];
//    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:@"Hello World! "
//                                     " 创建绘制的区域，CoreText 本身支持各种文字排版的区域，"
//                                     " 我们这里简单地将 UIView 的整个界面作为排版的区域。"
//                                     " 为了加深理解，建议读者将该步骤的代码替换成如下代码，"
//                                     " 测试设置不同的绘制区域带来的界面变化。"];
//    CTFramesetterRef frameSetter =
//    CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
//    CTFrameRef frameref = CTFramesetterCreateFrame(frameSetter, (CFRange){0, attString.length}, path, NULL);
//
//    CTFrameDraw(frameref, context);
//
//    CFRelease(frameref);
//    CFRelease(path);
//    CFRelease(frameSetter);
}

@end
