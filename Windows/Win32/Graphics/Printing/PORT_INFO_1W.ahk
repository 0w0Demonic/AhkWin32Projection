#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk
#Include ..\..\Foundation\PWSTR.ahk

/**
 * The PORT\_INFO\_1 structure identifies a supported printer port.
 * @see https://learn.microsoft.com/windows/win32/printdocs/port-info-1
 * @namespace Windows.Win32.Graphics.Printing
 * @version v4.0.30319
 * @charset Unicode
 */
class PORT_INFO_1W extends Win32Struct
{
    static sizeof => 8

    static packingSize => 8

    /**
     * Pointer to a null-terminated string that identifies a supported printer port (for example, "LPT1:").
     * @type {PWSTR}
     */
    pName{
        get {
            if(!this.HasProp("__pName"))
                this.__pName := PWSTR(this.ptr + 0)
            return this.__pName
        }
    }
}
