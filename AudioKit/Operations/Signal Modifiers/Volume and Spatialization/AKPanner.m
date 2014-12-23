//
//  AKPanner.m
//  AudioKit
//
//  Auto-generated on 12/23/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//
//  Implementation of Csound's pan2:
//  http://www.csounds.com/manual/html/pan2.html
//

#import "AKPanner.h"
#import "AKManager.h"

@implementation AKPanner
{
    AKParameter * _audioSource;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
                                pan:(AKParameter *)pan
                          panMethod:(AKPanMethod)panMethod
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        _pan = pan;
        _panMethod = panMethod;
    }
    return self;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        // Default Values
        _pan = akp(0);    
        _panMethod = AKPanMethodEqualPower;    
    }
    return self;
}

+ (instancetype)stereoaudioWithAudioSource:(AKParameter *)audioSource
{
    return [[AKPanner alloc] initWithAudioSource:audioSource];
}

- (void)setOptionalPan:(AKParameter *)pan {
    _pan = pan;
}
- (void)setOptionalPanMethod:(AKPanMethod)panMethod {
    _panMethod = panMethod;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ pan2 AKAudio(%@), 0.5 * (%@+1), %@",
            self,
            _audioSource,
            _pan,
            akpi(_panMethod)];
}

@end
