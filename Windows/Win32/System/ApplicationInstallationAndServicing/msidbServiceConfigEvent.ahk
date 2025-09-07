#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.System.ApplicationInstallationAndServicing
 * @version v4.0.30319
 */
class msidbServiceConfigEvent{

    /**
     * @type {Integer (Int32)}
     */
    static msidbServiceConfigEventInstall => 1

    /**
     * @type {Integer (Int32)}
     */
    static msidbServiceConfigEventUninstall => 2

    /**
     * @type {Integer (Int32)}
     */
    static msidbServiceConfigEventReinstall => 4
}
