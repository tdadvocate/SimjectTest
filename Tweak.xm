#pragma mark Tweak
%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
%orig;

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Simject Loaded"
message:@"Simject has been loaded successfully!"
delegate:nil
cancelButtonTitle:@"Acknowledged!"
otherButtonTitles:nil];
[alert show];


}

%end

