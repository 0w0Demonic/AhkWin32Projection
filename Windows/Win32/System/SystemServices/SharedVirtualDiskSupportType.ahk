#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.System.SystemServices
 * @version v4.0.30319
 */
class SharedVirtualDiskSupportType{

    /**
     * @type {Integer (Int32)}
     */
    static SharedVirtualDisksUnsupported => 0

    /**
     * @type {Integer (Int32)}
     */
    static SharedVirtualDisksSupported => 1

    /**
     * @type {Integer (Int32)}
     */
    static SharedVirtualDiskSnapshotsSupported => 3

    /**
     * @type {Integer (Int32)}
     */
    static SharedVirtualDiskCDPSnapshotsSupported => 7
}
