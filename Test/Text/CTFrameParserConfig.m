//
//  CTFrameParserConfig.m
//  Test
//
//  Created by gangyi1 on 2021/11/8.
//

#import "CTFrameParserConfig.h"

@implementation CTFrameParserConfig

- (instancetype)init
{
    self = [super init];
    if (self) {
        _width = 200.0f;
        _fontSize = 16.0f;
        _lineSpace = 8.0f;
        _textColor = [UIColor redColor];
    }
    return self;
}

@end
