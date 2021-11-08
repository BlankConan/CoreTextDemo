//
//  CTFrameParser.h
//  Test
//
//  Created by gangyi1 on 2021/11/8.
//

#import <Foundation/Foundation.h>
@class CTFrameParserConfig;
@class CoreTextData;

NS_ASSUME_NONNULL_BEGIN

@interface CTFrameParser : NSObject

+ (CoreTextData *)parseContent:(NSString *)content config:(CTFrameParserConfig*)config;


@end

NS_ASSUME_NONNULL_END
