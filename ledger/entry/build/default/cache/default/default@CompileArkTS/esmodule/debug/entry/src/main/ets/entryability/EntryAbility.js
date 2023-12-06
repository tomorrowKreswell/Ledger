import hilog from '@ohos:hilog';
import UIAbility from '@ohos:app.ability.UIAbility';
export default class entryAbility extends UIAbility {
    onCreate(want, launchParam) {
        var _a, _b;
        hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
        hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
        hilog.info(0x0000, 'testTag', '%{public}s', (_a = 'want param:' + JSON.stringify(want)) !== null && _a !== void 0 ? _a : '');
        hilog.info(0x0000, 'testTag', '%{public}s', (_b = 'launchParam:' + JSON.stringify(launchParam)) !== null && _b !== void 0 ? _b : '');
    }
    onDestroy() {
        hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
        hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
    }
    onWindowStageCreate(windowStage) {
        // Main window is created, set main page for this ability
        hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
        hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
        windowStage.loadContent('pages/index', (err, data) => {
            var _a, _b;
            if (err.code) {
                hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.ERROR);
                hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', (_a = JSON.stringify(err)) !== null && _a !== void 0 ? _a : '');
                return;
            }
            hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
            hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s', (_b = JSON.stringify(data)) !== null && _b !== void 0 ? _b : '');
        });
    }
    onWindowStageDestroy() {
        // Main window is destroyed, release UI related resources
        hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
        hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
    }
    onForeground() {
        // Ability has brought to foreground
        hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
        hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
    }
    onBackground() {
        // Ability has back to background
        hilog.isLoggable(0x0000, 'testTag', hilog.LogLevel.INFO);
        hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
    }
}
//# sourceMappingURL=EntryAbility.js.map