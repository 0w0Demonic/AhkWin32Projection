#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk
#Include ..\..\Foundation\PWSTR.ahk

/**
 * The WMFILECAPABILITIES structure describes the MIME type.
 * @see https://learn.microsoft.com/windows/win32/WMDM/wmfilecapabilities
 * @namespace Windows.Win32.Media.DeviceManager
 * @version v4.0.30319
 */
class WMFILECAPABILITIES extends Win32Struct
{
    static sizeof => 16

    static packingSize => 8

    /**
     * MIME type.
     * @type {PWSTR}
     */
    pwszMimeType{
        get {
            if(!this.HasProp("__pwszMimeType"))
                this.__pwszMimeType := PWSTR(this.ptr + 0)
            return this.__pwszMimeType
        }
    }

    /**
     * 
     * @type {Integer}
     */
    dwReserved {
        get => NumGet(this, 8, "uint")
        set => NumPut("uint", value, this, 8)
    }
}
