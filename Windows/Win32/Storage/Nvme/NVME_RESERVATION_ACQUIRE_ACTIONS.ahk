#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.Storage.Nvme
 * @version v4.0.30319
 */
class NVME_RESERVATION_ACQUIRE_ACTIONS{

    /**
     * @type {Integer (Int32)}
     */
    static NVME_RESERVATION_ACQUIRE_ACTION_ACQUIRE => 0

    /**
     * @type {Integer (Int32)}
     */
    static NVME_RESERVATION_ACQUIRE_ACTION_PREEMPT => 1

    /**
     * @type {Integer (Int32)}
     */
    static NVME_RESERVATION_ACQUIRE_ACTION_PREEMPT_AND_ABORT => 2
}
