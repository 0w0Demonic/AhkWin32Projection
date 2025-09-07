#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.NetworkManagement.Ndis
 * @version v4.0.30319
 */
class NDIS_PORT_AUTHORIZATION_STATE{

    /**
     * @type {Integer (Int32)}
     */
    static NdisPortAuthorizationUnknown => 0

    /**
     * @type {Integer (Int32)}
     */
    static NdisPortAuthorized => 1

    /**
     * @type {Integer (Int32)}
     */
    static NdisPortUnauthorized => 2

    /**
     * @type {Integer (Int32)}
     */
    static NdisPortReauthorizing => 3
}
