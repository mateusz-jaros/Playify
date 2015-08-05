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

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

- (IBAction)playPause:(id)sender {
    NSAppleScript *playPause = [[NSAppleScript alloc] initWithSource:@"tell application \"Spotify\" to playpause"];
    [playPause executeAndReturnError:nil];
}

- (IBAction)previousTrack:(id)sender {
    NSAppleScript *previousTrack = [[NSAppleScript alloc] initWithSource:@"tell application \"Spotify\" to previous track"];
    [previousTrack executeAndReturnError:nil];
}

- (IBAction)nextTrack:(id)sender {
    NSAppleScript *nextTrack = [[NSAppleScript alloc] initWithSource:@"tell application \"Spotify\" to next track"];
    [nextTrack executeAndReturnError:nil];
}

- (IBAction)volumeSlider:(id)sender {
    double volume = self.volumeSlider.doubleValue;
    
    NSString *scriptText = [NSString stringWithFormat:@"tell application \"Spotify\" to set sound volume to %f", volume];
    
    NSAppleScript *volumeSlider = [[NSAppleScript alloc] initWithSource:scriptText];
    [volumeSlider executeAndReturnError:nil];
    NSLog(@"%f", volume);
}
- (IBAction)exitButton:(id)sender {
    [NSApp terminate:self];
}

@end