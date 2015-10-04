#import <Realm/Realm.h>

@class Parent;

@interface Child : RLMObject

@property BOOL          bool_prop;
@property int           int_prop;
@property float         float_prop;
@property double        double_prop;
@property NSString     *string_prop;
@property NSDate       *date_prop;
@property bool          cBool_prop;
@property long          long_prop;

@property Parent *parent;

@end

RLM_ARRAY_TYPE(Child)

@interface Parent : RLMObject

@property BOOL          bool_prop;
@property int           int_prop;
@property float         float_prop;
@property double        double_prop;
@property NSString     *string_prop;
@property NSDate       *date_prop;
@property bool          cBool_prop;
@property long          long_prop;

@property RLMArray<Child *> <Child> *children;

@end