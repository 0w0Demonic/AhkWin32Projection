#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.System.Diagnostics.Debug.Extensions
 * @version v4.0.30319
 */
class SignatureComparison{

    /**
     * @type {Integer (Int32)}
     */
    static Unrelated => 0

    /**
     * @type {Integer (Int32)}
     */
    static Ambiguous => 1

    /**
     * @type {Integer (Int32)}
     */
    static LessSpecific => 2

    /**
     * @type {Integer (Int32)}
     */
    static MoreSpecific => 3

    /**
     * @type {Integer (Int32)}
     */
    static Identical => 4
}
