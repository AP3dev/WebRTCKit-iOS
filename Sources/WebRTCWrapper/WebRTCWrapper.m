#import "WebRTCWrapper.h"
#include "../WebRTC/include/webrtc_vad.h"

@interface WebRTCWrapper () {
    VadInst* vad_C;
}
@end

@implementation WebRTCWrapper

-(id)init {
    self = [super init];
    if (self) {
        WebRtcVad_Create(&vad_C);
        WebRtcVad_Init(vad_C);
        WebRtcVad_set_mode(vad_C, 0);
    }
    return self;
}

-(void) dealloc {
    WebRtcVad_Free(vad_C);
}

-(BOOL) isVoiceAudio:(const int16_t*) audioFrame withSize:(int) size andSampleRate:(int) sampleRate; {
    int value = WebRtcVad_Process(vad_C, sampleRate, audioFrame, size) == 1;
    return value;
}

@end
