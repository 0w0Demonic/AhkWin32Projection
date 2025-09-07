#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * MIB_TCPROW_LH (tcpmib.h) contains information that describes an IPv4 TCP connection.
 * @remarks
 * The <a href="https://docs.microsoft.com/windows/desktop/api/iphlpapi/nf-iphlpapi-gettcptable">GetTcpTable</a> function retrieves the IPv4 TCP connection table on the local computer and returns this information in a <a href="https://docs.microsoft.com/windows/desktop/api/tcpmib/ns-tcpmib-mib_tcptable">MIB_TCPTABLE</a> structure. 
  * 
  * An array of <b>MIB_TCPROW</b> structures are contained in the <b>MIB_TCPTABLE</b> structure. The <b>MIB_TCPROW</b> structure is also used by the <a href="https://docs.microsoft.com/windows/desktop/api/iphlpapi/nf-iphlpapi-settcpentry">SetTcpEntry</a> function.
  * 
  *   The <b>dwState</b> member indicates the state of the TCP entry in a TCP state diagram. A TCP connection progresses through a series of states during its
  *   lifetime.  The states are:  LISTEN, SYN-SENT, SYN-RECEIVED,
  *   ESTABLISHED, FIN-WAIT-1, FIN-WAIT-2, CLOSE-WAIT, CLOSING, LAST-ACK,
  *   TIME-WAIT, and the fictional state CLOSED.  The CLOSED state is fictional
  *   because it represents the state when there is no Transmission Control Block, and therefore,
  *   no connection.  The TCP protocol is described in RFC 793. For more information, see 
  * <a href="https://www.ietf.org/rfc/rfc793.txt">http://www.ietf.org/rfc/rfc793.txt</a>. 
  * 
  * The <b>dwLocalAddr</b> and <b>dwRemoteAddr</b> members are stored as a <b>DWORD</b> in the same format as the  <a href="https://docs.microsoft.com/windows/desktop/api/winsock2/ns-winsock2-in_addr">in_addr</a> structure. In order to use the <b>dwLocalAddr</b> or <b>dwRemoteAddr</b> members, the <a href="https://docs.microsoft.com/windows/desktop/api/winsock/nf-winsock-ntohl">ntohl</a> or <a href="https://docs.microsoft.com/windows/desktop/api/wsipv6ok/nf-wsipv6ok-inet_ntoa">inet_ntoa</a> functions in Windows Sockets or similar functions may be needed. On Windows Vista and later, the <a href="https://docs.microsoft.com/windows/desktop/api/ip2string/nf-ip2string-rtlipv4addresstostringa">RtlIpv4AddressToString</a> or <a href="https://docs.microsoft.com/windows/desktop/api/ip2string/nf-ip2string-rtlipv4addresstostringexw">RtlIpv4AddressToStringEx</a> functions may be used to convert the IPv4 address in the <b>dwLocalAddr</b> or <b>dwRemoteAddr</b> members to a string without loading the Windows Sockets DLL. 
  * 
  * The <b>dwLocalPort</b>, and <b>dwRemotePort</b> members are in network byte order. In order to use the <b>dwLocalPort</b> or <b>dwRemotePort</b> members, the <a href="https://docs.microsoft.com/windows/desktop/api/winsock/nf-winsock-ntohs">ntohs</a> or <a href="https://docs.microsoft.com/windows/desktop/api/wsipv6ok/nf-wsipv6ok-inet_ntoa">inet_ntoa</a> functions in Windows Sockets or similar functions may be needed. 
  * 
  * The <b>MIB_TCPROW</b> structure changed slightly on Windows Vista and later. On Windows Vista and later, the <b>dwState</b> member is replaced by  a union that contains the following members.
  * 
  * 
  * 
  * <table>
  * <tr>
  * <th>Member</th>
  * <th>Description</th>
  * </tr>
  * <tr>
  * <td width="40%">
  * <a id="DWORD_dwState"></a><a id="dword_dwstate"></a><a id="DWORD_DWSTATE"></a>DWORD dwState
  * 
  * </td>
  * <td width="60%">
  * The state of the TCP connection.
  * 
  * </td>
  * </tr>
  * <tr>
  * <td width="40%">
  * <a id="MIB_TCP_STATE_State"></a><a id="mib_tcp_state_state"></a><a id="MIB_TCP_STATE_STATE"></a>MIB_TCP_STATE State
  * 
  * </td>
  * <td width="60%">
  * The state of the TCP connection. This member can be one of the values from the <b>MIB_TCP_STATE</b> enumeration type defined in the <i>Tcpmib.h</i> header file. The possible values are the same as those defined for the <b>dwState</b> member. 
  * 
  * </td>
  * </tr>
  * </table>
  *  
  * 
  * In the Windows SDK, the version of the structure for use on Windows Vista and later is  defined as <b>MIB_TCPROW_LH</b>. In the Windows SDK, the version of this structure to be used on earlier systems including Windows 2000 and later is defined as <b>MIB_TCPROW_W2K</b>. When compiling an application if the target platform is Windows Vista and later (<c>NTDDI_VERSION &gt;= NTDDI_LONGHORN</code>, <code>_WIN32_WINNT &gt;= 0x0600</code>, or <code>WINVER &gt;= 0x0600</c>), the <b>MIB_TCPROW_LH</b> structure is typedefed to the <b>MIB_TCPROW</b> structure. When compiling an application if the target platform is not Windows Vista and later, the <b>MIB_TCPROW_W2K</b> structure is typedefed to the <b>MIB_TCPROW</b> structure. 
  * 
  * On the Windows SDK released for Windows Vista and later, the organization of header files has changed. This  structure is defined in the <i>Tcpmib.h</i> header file, not in the <i>Iprtrmib.h</i> header file. Note that the <i>Tcpmib.h</i> header file is automatically included in <i>Iprtrmib.h</i>, which is automatically included in the <i>Iphlpapi.h</i> header file. The  <i>Tcpmib.h</i> and <i>Iprtrmib.h</i> header files should never be used directly.
 * @see https://learn.microsoft.com/windows/win32/api/tcpmib/ns-tcpmib-mib_tcprow_lh
 * @namespace Windows.Win32.NetworkManagement.IpHelper
 * @version v4.0.30319
 */
class MIB_TCPROW_LH extends Win32Struct
{
    static sizeof => 20

    static packingSize => 4

    /**
     * @type {Integer}
     */
    dwState {
        get => NumGet(this, 0, "uint")
        set => NumPut("uint", value, this, 0)
    }

    /**
     * @type {Integer}
     */
    State {
        get => NumGet(this, 0, "int")
        set => NumPut("int", value, this, 0)
    }

    /**
     * Type: <b>DWORD</b>
     * 
     * The local IPv4 address for the TCP connection on the local computer. A value of zero indicates the listener  can accept a connection on any interface.
     * @type {Integer}
     */
    dwLocalAddr {
        get => NumGet(this, 4, "uint")
        set => NumPut("uint", value, this, 4)
    }

    /**
     * Type: <b>DWORD</b>
     * 
     * The local port number in network byte order for the TCP connection on the local computer.
     * 
     *  The maximum size of an IP port number is 16 bits, so only the lower 16 bits should be used. The upper 16 bits may contain uninitialized data.
     * @type {Integer}
     */
    dwLocalPort {
        get => NumGet(this, 8, "uint")
        set => NumPut("uint", value, this, 8)
    }

    /**
     * Type: <b>DWORD</b>
     * 
     * The IPv4 address for the TCP connection on the remote computer. When the <b>dwState</b> member is <b>MIB_TCP_STATE_LISTEN</b>, this value has no meaning.
     * @type {Integer}
     */
    dwRemoteAddr {
        get => NumGet(this, 12, "uint")
        set => NumPut("uint", value, this, 12)
    }

    /**
     * Type: <b>DWORD</b>
     * 
     * The remote port number in network byte order for the TCP connection on the remote computer. When the <b>dwState</b> member is <b>MIB_TCP_STATE_LISTEN</b>, this member has no meaning. 
     * 
     * The maximum size of an IP port number is 16 bits, so only the lower 16 bits should be used. The upper 16 bits may contain uninitialized data.
     * @type {Integer}
     */
    dwRemotePort {
        get => NumGet(this, 16, "uint")
        set => NumPut("uint", value, this, 16)
    }
}
