//
//  XVimGEvaluator.m
//  XVim
//
//  Created by Shuichiro Suzuki on 3/1/12.
//  Copyright (c) 2012 JugglerShu.Net. All rights reserved.
//

#import "XVimGEvaluator.h"
#import "NSTextView+VimMotion.h"
#import "XVimMotionEvaluator.h"
#import "Logger.h"

@implementation XVimGEvaluator
- (XVimEvaluator*)g:(id)arg{
    METHOD_TRACE_LOG();
    //TODO: Must deal numeric arg as linenumber
    NSTextView* view = [self textView];
    return [self _motionFixedFrom:[view selectedRange].location To:0 Type:LINEWISE];
}
@end