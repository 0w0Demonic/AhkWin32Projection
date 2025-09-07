#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.System.ComponentServices
 * @version v4.0.30319
 */
class COMAdminTransactionOptions{

    /**
     * @type {Integer (Int32)}
     */
    static COMAdminTransactionIgnored => 0

    /**
     * @type {Integer (Int32)}
     */
    static COMAdminTransactionNone => 1

    /**
     * @type {Integer (Int32)}
     */
    static COMAdminTransactionSupported => 2

    /**
     * @type {Integer (Int32)}
     */
    static COMAdminTransactionRequired => 3

    /**
     * @type {Integer (Int32)}
     */
    static COMAdminTransactionRequiresNew => 4
}
