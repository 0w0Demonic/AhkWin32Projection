#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.Storage.FileSystem
 * @version v4.0.30319
 */
class NtmsOperationalState{

    /**
     * @type {Integer (Int32)}
     */
    static NTMS_READY => 0

    /**
     * @type {Integer (Int32)}
     */
    static NTMS_INITIALIZING => 10

    /**
     * @type {Integer (Int32)}
     */
    static NTMS_NEEDS_SERVICE => 20

    /**
     * @type {Integer (Int32)}
     */
    static NTMS_NOT_PRESENT => 21
}
