#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * @namespace Windows.Win32.NetworkManagement.Ndis
 * @version v4.0.30319
 */
class NDIS_802_11_REMOVE_KEY extends Win32Struct
{
    static sizeof => 16

    static packingSize => 4

    /**
     * @type {Integer}
     */
    Length {
        get => NumGet(this, 0, "uint")
        set => NumPut("uint", value, this, 0)
    }

    /**
     * @type {Integer}
     */
    KeyIndex {
        get => NumGet(this, 4, "uint")
        set => NumPut("uint", value, this, 4)
    }

    /**
     * @type {Array<Byte>}
     */
    BSSID{
        get {
            if(!this.HasProp("__BSSIDProxyArray"))
                this.__BSSIDProxyArray := Win32FixedArray(this.ptr + 8, 6, Primitive, "char")
            return this.__BSSIDProxyArray
        }
    }
}
