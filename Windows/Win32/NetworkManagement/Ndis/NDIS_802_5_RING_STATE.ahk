#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.NetworkManagement.Ndis
 * @version v4.0.30319
 */
class NDIS_802_5_RING_STATE{

    /**
     * @type {Integer (Int32)}
     */
    static NdisRingStateOpened => 1

    /**
     * @type {Integer (Int32)}
     */
    static NdisRingStateClosed => 2

    /**
     * @type {Integer (Int32)}
     */
    static NdisRingStateOpening => 3

    /**
     * @type {Integer (Int32)}
     */
    static NdisRingStateClosing => 4

    /**
     * @type {Integer (Int32)}
     */
    static NdisRingStateOpenFailure => 5

    /**
     * @type {Integer (Int32)}
     */
    static NdisRingStateRingFailure => 6
}
