const haptics = require('bindings')('haptics.node');

const performFeedback = (pattern = 'NSHapticFeedbackPatternGeneric', performanceTime = 'NSHapticFeedbackPerformanceTimeNow') => {
    if (!['NSHapticFeedbackPatternLevelChange', 'NSHapticFeedbackPatternAlignment', 'NSHapticFeedbackPatternGeneric'].includes(pattern)) {
        throw new TypeError('Invalid pattern provided');
    }

    if (!['NSHapticFeedbackPerformanceTimeDefault', 'NSHapticFeedbackPerformanceTimeDrawCompleted', 'NSHapticFeedbackPerformanceTimeNow'].includes(performanceTime)) {
        throw new TypeError('Invalid performance time provided');
    }

    return haptics.performFeedback(pattern, performanceTime);
};

module.exports = {
    performFeedback,
};
