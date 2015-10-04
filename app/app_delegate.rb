class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'realm-bug'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    c = Child.new
    c.string_prop = "Child"

    p = Parent.new
    p.string_prop = "Parent"

    realm = RLMRealm.defaultRealm
    realm.beginWriteTransaction
    realm.addObject(c)
    realm.addObject(p)
    realm.commitWriteTransaction

    child = Child.allObjects.firstObject
    parent = Parent.allObjects.firstObject


    realm.beginWriteTransaction

    # Error message:
    # Objective-C stub for message `setParent:' type `v:@@' not precompiled.
    # Make sure you properly link with the framework or library that defines this message.
    child.parent = parent

    # Error message:
    # Objective-C stub for message `children' type `@:@' not precompiled.
    # Make sure you properly link with the framework or library that defines this message.
    parent.children.addObject(child)

    realm.commitWriteTransaction

    true
  end
end
