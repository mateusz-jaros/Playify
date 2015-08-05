//
//  ViewController.m
//  Playify
//
//  Created by Mateusz Jaros on 04.08.2015.
//  Copyright (c) 2015 Mateusz Jaros. All rights reserved.
//

#import "ViewController.h"
#import <AppleScriptObjC/AppleScriptObjC.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.window setWantsLayer:YES];
    [self.window.layer setBackgroundColor:[[NSColor redColor] CGColor]];
    
}

- (void)drawRect:(NSRect)dirtyRect {
    // Fill in background Color
    CGContextRef context = (CGContextRef) [[NSGraphicsContext currentContext] graphicsPort];
    CGContextSetRGBFillColor(context, 0.227,0.251,0.337,0.8);
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)playPause:(id)sender {
    NSAppleScript *playPause = [[NSAppleScript alloc] initWithSource:@"tell application \"Spotify\" to playpause"];
    [playPause executeAndReturnError:nil];
    
    self.playPause.image = [NSImage imageNamed:@"pause"];
}

- (IBAction)previousTrack:(id)sender {
    NSAppleScript *previousTrack = [[NSAppleScript alloc] initWithSource:@"tell application \"Spotify\" to previous track"];
    [previousTrack executeAndReturnError:nil];
}

- (IBAction)nextTrack:(id)sender {
    NSAppleScript *nextTrack = [[NSAppleScript alloc] initWithSource:@"tell application \"Spotify\" to next track"];
    [nextTrack executeAndReturnError:nil];
}

@end