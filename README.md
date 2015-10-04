App crashes when trying to set realtions between child and parent objects:

`Objective-C stub for message `setParent:' type `v:@@' not precompiled. Make sure you properly link with the framework or library that defines this message.`

To build the app:

1. build static Realm framework from here: https://github.com/realm/realm-cocoa with `sh build.sh build`
2. put it from `realm-cocoa/build/ios` into `/vendor/realm`
3. `rake`