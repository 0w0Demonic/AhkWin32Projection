#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * Contains fields that specify the information in the Firmware Slot Information log page.
 * @remarks
 * 
 * @see https://learn.microsoft.com/windows/win32/api/nvme/ns-nvme-nvme_firmware_slot_info_log
 * @namespace Windows.Win32.Storage.Nvme
 * @version v4.0.30319
 */
class NVME_FIRMWARE_SLOT_INFO_LOG extends Win32Struct
{
    static sizeof => 512

    static packingSize => 8

    /**
     * An Active Firmware Information (**AFI**) structure containing fields that specify information about the active firmware revision.
     * @type {Integer}
     */
    AFI {
        get => NumGet(this, 0, "char")
        set => NumPut("char", value, this, 0)
    }

    /**
     * Bit 3 of the **AFI** structure is reserved.
     * @type {Array<Byte>}
     */
    Reserved0{
        get {
            if(!this.HasProp("__Reserved0ProxyArray"))
                this.__Reserved0ProxyArray := Win32FixedArray(this.ptr + 1, 7, Primitive, "char")
            return this.__Reserved0ProxyArray
        }
    }

    /**
     * An array of 7 Firmware Revisions that contain the revision of the firmware downloaded to each of the 7 firmware slots.
     * 
     * The members of the array are named based on the firmware slot number (1-7), such that Firmware Revision for Slot 1 (FRS1) is in position 1, Firmware Revision for Slot 2 (FRS2) is in position 2, and so on, up to Firmware Revision for Slot 7 (FRS7) in position 7.
     * 
     * If no valid firmware revision is present, or if a slot is unsupported, all zeros will be returned for that slot.
     * @type {Array<UInt64>}
     */
    FRS{
        get {
            if(!this.HasProp("__FRSProxyArray"))
                this.__FRSProxyArray := Win32FixedArray(this.ptr + 8, 7, Primitive, "uint")
            return this.__FRSProxyArray
        }
    }

    /**
     * Bit 7 of the **AFI** structure is reserved.
     * @type {Array<Byte>}
     */
    Reserved1{
        get {
            if(!this.HasProp("__Reserved1ProxyArray"))
                this.__Reserved1ProxyArray := Win32FixedArray(this.ptr + 64, 448, Primitive, "char")
            return this.__Reserved1ProxyArray
        }
    }
}
