/*=========================================================================
  Program:   OsiriX

  Copyright (c) OsiriX Team
  All rights reserved.
  Distributed under GNU - GPL
  
     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.
=========================================================================*/

#import "HangingProtocolController.h"
#import "LayoutWindowController.h";
#import "LayoutArrayController.h"


@implementation HangingProtocolController

- (id)newObject{
	id hangingProtocol = [super newObject];
	[hangingProtocol setValue:[_layoutWindowController modality] forKey:@"modality"];
	[hangingProtocol setValue:[_layoutWindowController studyDescription] forKey:@"studyDescription"]; 
	[hangingProtocol setValue:[_layoutWindowController institution] forKey:@"institution"];
	id layout = [[_layoutArrayController newObject] autorelease];
	[hangingProtocol setValue:[NSArray arrayWithObject:layout] forKey:@"layouts"]; 
	return hangingProtocol;
}


@end
