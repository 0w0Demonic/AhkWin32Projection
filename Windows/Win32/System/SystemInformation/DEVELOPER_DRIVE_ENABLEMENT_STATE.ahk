#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.System.SystemInformation
 * @version v4.0.30319
 */
class DEVELOPER_DRIVE_ENABLEMENT_STATE{

    /**
     * @type {Integer (Int32)}
     */
    static DeveloperDriveEnablementStateError => 0

    /**
     * @type {Integer (Int32)}
     */
    static DeveloperDriveEnabled => 1

    /**
     * @type {Integer (Int32)}
     */
    static DeveloperDriveDisabledBySystemPolicy => 2

    /**
     * @type {Integer (Int32)}
     */
    static DeveloperDriveDisabledByGroupPolicy => 3
}
