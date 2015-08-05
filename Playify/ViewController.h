//
//  ViewController.h
//  Playify
//
//  Created by Mateusz Jaros on 04.08.2015.
//  Copyright (c) 2015 Mateusz Jaros. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (strong) IBOutlet NSView *window;

@property (weak) IBOutlet NSButton *playPause;
@property (weak) IBOutlet NSButton *previousTrack;
@property (weak) IBOutlet NSButton *nextTrack;

@end

