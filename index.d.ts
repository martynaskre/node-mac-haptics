export type HapticFeedbackPattern = 'NSHapticFeedbackPatternLevelChange'|'NSHapticFeedbackPatternAlignment'|'NSHapticFeedbackPatternGeneric';
export type HapticFeedbackPerformanceTime = 'NSHapticFeedbackPerformanceTimeDefault'|'NSHapticFeedbackPerformanceTimeDrawCompleted'|'NSHapticFeedbackPerformanceTimeNow';

export function performFeedback(pattern: HapticFeedbackPattern, performanceTime: HapticFeedbackPerformanceTime): void;