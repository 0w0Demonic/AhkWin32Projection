#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * @namespace Windows.Win32.Security.Cryptography
 * @version v4.0.30319
 */
class NCRYPT_PCP_TPM_FW_VERSION_INFO extends Win32Struct
{
    static sizeof => 8

    static packingSize => 2

    /**
     * @type {Integer}
     */
    major1 {
        get => NumGet(this, 0, "ushort")
        set => NumPut("ushort", value, this, 0)
    }

    /**
     * @type {Integer}
     */
    major2 {
        get => NumGet(this, 2, "ushort")
        set => NumPut("ushort", value, this, 2)
    }

    /**
     * @type {Integer}
     */
    minor1 {
        get => NumGet(this, 4, "ushort")
        set => NumPut("ushort", value, this, 4)
    }

    /**
     * @type {Integer}
     */
    minor2 {
        get => NumGet(this, 6, "ushort")
        set => NumPut("ushort", value, this, 6)
    }
}
