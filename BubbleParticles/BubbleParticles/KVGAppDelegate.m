//
//  KVGAppDelegate.m
//  BubbleParticles
//
//  Created by vincentsfong on 4/25/14.
//  Copyright (c) 2014 KingVinceGames. All rights reserved.
//

#import "KVGAppDelegate.h"
#import "KVGMyScene.h"

@implementation KVGAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    /* Pick a size for the scene */
    SKScene *scene = [KVGMyScene sceneWithSize:CGSizeMake(1024, 768)];

    /* Set the scale mode to scale to fit the window */
    scene.scaleMode = SKSceneScaleModeAspectFit;

    [self.skView presentScene:scene];

    self.skView.showsFPS = YES;
    self.skView.showsNodeCount = YES;
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end
