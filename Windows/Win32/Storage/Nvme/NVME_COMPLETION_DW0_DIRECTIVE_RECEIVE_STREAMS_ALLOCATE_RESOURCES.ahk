#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * Contains information about the number of allocated stream resources in a Directive Receive command.
 * @remarks
 * 
 * @see https://learn.microsoft.com/windows/win32/api/nvme/ns-nvme-nvme_completion_dw0_directive_receive_streams_allocate_resources
 * @namespace Windows.Win32.Storage.Nvme
 * @version v4.0.30319
 */
class NVME_COMPLETION_DW0_DIRECTIVE_RECEIVE_STREAMS_ALLOCATE_RESOURCES extends Win32Struct
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
        get => NumGet(this, 4, "uint")
        set => NumPut("uint", value, this, 4)
    }
}
