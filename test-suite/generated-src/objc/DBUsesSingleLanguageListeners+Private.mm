// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from single_language_interfaces.djinni

#import "DBUsesSingleLanguageListeners+Private.h"
#import "DBUsesSingleLanguageListeners.h"
#import "DBJavaOnlyListener+Private.h"
#import "DBObjcOnlyListener+Private.h"
#import "DBPyOnlyListener+Private.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIObjcWrapperCache+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface DBUsesSingleLanguageListenersCppProxy : NSObject<DBUsesSingleLanguageListeners>

- (id)initWithCpp:(const std::shared_ptr<::testsuite::UsesSingleLanguageListeners>&)cppRef;

@end

@implementation DBUsesSingleLanguageListenersCppProxy {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::testsuite::UsesSingleLanguageListeners>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::testsuite::UsesSingleLanguageListeners>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (void)callForObjC:(nullable id<DBObjcOnlyListener>)l {
    try {
        _cppRefHandle.get()->callForObjC(::djinni_generated::ObjcOnlyListener::toCpp(l));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)callForJava:(nullable id<DBJavaOnlyListener>)l {
    try {
        _cppRefHandle.get()->callForJava(::djinni_generated::JavaOnlyListener::toCpp(l));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)callForPy:(nullable id<DBPyOnlyListener>)l {
    try {
        _cppRefHandle.get()->callForPy(::djinni_generated::PyOnlyListener::toCpp(l));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

class UsesSingleLanguageListeners::ObjcProxy final
: public ::testsuite::UsesSingleLanguageListeners
, public ::djinni::ObjcProxyCache::Handle<ObjcType>
{
public:
    using Handle::Handle;
    void callForObjC(const std::shared_ptr<::testsuite::ObjcOnlyListener> & c_l) override
    {
        @autoreleasepool {
            [Handle::get() callForObjC:(::djinni_generated::ObjcOnlyListener::fromCpp(c_l))];
        }
    }
    void callForJava(const std::shared_ptr<::testsuite::JavaOnlyListener> & c_l) override
    {
        @autoreleasepool {
            [Handle::get() callForJava:(::djinni_generated::JavaOnlyListener::fromCpp(c_l))];
        }
    }
    void callForPy(const std::shared_ptr<::testsuite::PyOnlyListener> & c_l) override
    {
        @autoreleasepool {
            [Handle::get() callForPy:(::djinni_generated::PyOnlyListener::fromCpp(c_l))];
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto UsesSingleLanguageListeners::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    if ([(id)objc isKindOfClass:[DBUsesSingleLanguageListenersCppProxy class]]) {
        return ((DBUsesSingleLanguageListenersCppProxy*)objc)->_cppRefHandle.get();
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto UsesSingleLanguageListeners::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    if (auto cppPtr = dynamic_cast<ObjcProxy*>(cpp.get())) {
        return cppPtr->Handle::get();
    }
    return ::djinni::get_cpp_proxy<DBUsesSingleLanguageListenersCppProxy>(cpp);
}

}  // namespace djinni_generated

@end
