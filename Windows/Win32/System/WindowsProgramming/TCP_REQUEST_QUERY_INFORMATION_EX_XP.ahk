#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk
#Include .\TDIEntityID.ahk
#Include .\TDIObjectID.ahk

/**
 * The TCP_REQUEST_QUERY_INFORMATION_EX_XP structure (tdiinfo.h) contains the input for the IOCTL_TCP_QUERY_INFORMATION_EX control code.
 * @see https://learn.microsoft.com/windows/win32/api/tdiinfo/ns-tdiinfo-tcp_request_query_information_ex_xp
 * @namespace Windows.Win32.System.WindowsProgramming
 * @version v4.0.30319
 */
class TCP_REQUEST_QUERY_INFORMATION_EX_XP extends Win32Struct
{
    static sizeof => 56

    static packingSize => 8

    /**
     * The <a href="https://docs.microsoft.com/windows/desktop/api/tdiinfo/ns-tdiinfo-tdiobjectid">TDIObjectID</a> structure that defines the type of information being requested from the TCP driver by <a href="https://docs.microsoft.com/windows/desktop/api/tcpioctl/ni-tcpioctl-ioctl_tcp_query_information_ex">IOCTL_TCP_QUERY_INFORMATION_EX</a>.
     * @type {TDIObjectID}
     */
    ID{
        get {
            if(!this.HasProp("__ID"))
                this.__ID := TDIObjectID(this.ptr + 0)
            return this.__ID
        }
    }

    /**
     * The IPv4 or IPv6 address to be used when <a href="https://docs.microsoft.com/windows/desktop/api/tcpioctl/ns-tcpioctl-ipinterfaceinfo">IPInterfaceInfo</a> data is requested for a particular IP address.
     * @type {Array<UIntPtr>}
     */
    Context{
        get {
            if(!this.HasProp("__ContextProxyArray"))
                this.__ContextProxyArray := Win32FixedArray(this.ptr + 24, 4, Primitive, "ptr")
            return this.__ContextProxyArray
        }
    }
}
