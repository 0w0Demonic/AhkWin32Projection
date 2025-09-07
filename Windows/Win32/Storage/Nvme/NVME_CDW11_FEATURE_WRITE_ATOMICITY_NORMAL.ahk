#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * Contains parameters for the Write Atomicity Normal Feature that controls the operation of the Atomic Write Unit Normal (**AWUN**) and Namespace Atomic Write Unit Normal (**NAWUN**) parameters that define the controller’s support for atomic operations.
 * @remarks
 * 
 * @see https://learn.microsoft.com/windows/win32/api/nvme/ns-nvme-nvme_cdw11_feature_write_atomicity_normal
 * @namespace Windows.Win32.Storage.Nvme
 * @version v4.0.30319
 */
class NVME_CDW11_FEATURE_WRITE_ATOMICITY_NORMAL extends Win32Struct
{
    static sizeof => 8

    static packingSize => 4

    /**
     * @type {Integer}
     */
    Anonymous {
        get => NumGet(this, 0, "uint")
        set => NumPut("uint", value, this, 0)
    }

    /**
     * 
     * @type {Integer}
     */
    AsUlong {
        get => NumGet(this, 0, "uint")
        set => NumPut("uint", value, this, 0)
    }
}
