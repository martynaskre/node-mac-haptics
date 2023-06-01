# Node macOS Haptics

A native NodeJS module to interact with macOS haptic feedback.

## Installation

```bash
npm install node-mac-haptics --save
```

## Usage

```es6
import haptics from 'node-mac-haptics';

haptics.performFeedback();
```

## API

### `haptics.performFeedback(pattern = 'NSHapticFeedbackPatternGeneric', performanceTime = 'NSHapticFeedbackPerformanceTimeNow')`

* `pattern` String - pattern of feedback to be provided to the user. Can be one of `NSHapticFeedbackPatternLevelChange`, `NSHapticFeedbackPatternAlignment`, or `NSHapticFeedbackPatternGeneric`.
* `performanceTime` String - the time when the feedback should be provided to the user. Can be one of `NSHapticFeedbackPerformanceTimeDefault`, `NSHapticFeedbackPerformanceTimeDrawCompleted`, or `NSHapticFeedbackPerformanceTimeNow`.

Returns `Void`.

Initiates a specific pattern of haptic feedback to the user.

**Notes:**
  * Works from *macOS 10.11*.

## License
[MIT](LICENSE)