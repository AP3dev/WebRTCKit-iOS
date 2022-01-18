//  Wrapper to make the VAP lib more usable
//  Created by CedricSoubrie on 21/10/2019.
//  Copyright © 2019 APE. All rights reserved.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebRTCWrapper : NSObject

-(BOOL) isVoiceAudio:(const int16_t*) audioFrame withSize:(int) size andSampleRate:(int) sampleRate;

@end

NS_ASSUME_NONNULL_END
