#import <AppKit/AppKit.h>
#include <napi.h>

NSHapticFeedbackPattern parseFeedbackPattern(std::string pattern) {
  if (pattern == "NSHapticFeedbackPatternLevelChange") {
    return NSHapticFeedbackPatternLevelChange;
  } else if (pattern == "NSHapticFeedbackPatternAlignment") {
    return NSHapticFeedbackPatternAlignment;
  }

  return NSHapticFeedbackPatternGeneric;
}

NSHapticFeedbackPerformanceTime
parseFeedbackPerformaceTime(std::string pattern) {
  if (pattern == "NSHapticFeedbackPerformanceTimeDefault") {
    return NSHapticFeedbackPerformanceTimeDefault;
  } else if (pattern == "NSHapticFeedbackPerformanceTimeDrawCompleted") {
    return NSHapticFeedbackPerformanceTimeDrawCompleted;
  }

  return NSHapticFeedbackPerformanceTimeNow;
}

void performFeedback(const Napi::CallbackInfo &info) {
  const std::string pattern = info[0].As<Napi::String>().Utf8Value();
  const std::string performanceTime = info[0].As<Napi::String>().Utf8Value();

  NSHapticFeedbackPattern feedbackPattern = parseFeedbackPattern(pattern);
  NSHapticFeedbackPerformanceTime feedbackPerformanceTime =
      parseFeedbackPerformaceTime(performanceTime);

  [[NSHapticFeedbackManager defaultPerformer]
      performFeedbackPattern:feedbackPattern
             performanceTime:feedbackPerformanceTime];
};

Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "performFeedback"),
              Napi::Function::New(env, performFeedback));

  return exports;
}

NODE_API_MODULE(haptics, Init);
