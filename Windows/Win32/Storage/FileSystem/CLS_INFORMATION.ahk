#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * Describes general information about a log.
 * @see https://learn.microsoft.com/windows/win32/api/clfs/ns-clfs-cls_information
 * @namespace Windows.Win32.Storage.FileSystem
 * @version v4.0.30319
 */
class CLS_INFORMATION extends Win32Struct
{
    static sizeof => 112

    static packingSize => 8

    /**
     * The total available space that is allocated to a log, in bytes.  
     * 
     * This member is the sum of the sizes of all containers that are allocated to the dedicated log.
     * @type {Integer}
     */
    TotalAvailable {
        get => NumGet(this, 0, "int64")
        set => NumPut("int64", value, this, 0)
    }

    /**
     * The space that is available in a log to  append new records and reservation allocations, in bytes.
     * @type {Integer}
     */
    CurrentAvailable {
        get => NumGet(this, 8, "int64")
        set => NumPut("int64", value, this, 8)
    }

    /**
     * The total space in a  log that is dedicated to reservation allocations.
     * @type {Integer}
     */
    TotalReservation {
        get => NumGet(this, 16, "int64")
        set => NumPut("int64", value, this, 16)
    }

    /**
     * The size of the base log, in bytes.
     * @type {Integer}
     */
    BaseFileSize {
        get => NumGet(this, 24, "uint")
        set => NumPut("uint", value, this, 24)
    }

    /**
     * The size of a container, in bytes.
     * @type {Integer}
     */
    ContainerSize {
        get => NumGet(this, 32, "uint")
        set => NumPut("uint", value, this, 32)
    }

    /**
     * The number of active containers that are associated with a dedicated log.
     * @type {Integer}
     */
    TotalContainers {
        get => NumGet(this, 40, "uint")
        set => NumPut("uint", value, this, 40)
    }

    /**
     * The number of containers that are not in an active log.
     * @type {Integer}
     */
    FreeContainers {
        get => NumGet(this, 44, "uint")
        set => NumPut("uint", value, this, 44)
    }

    /**
     * The number of  log streams  that are active in a physical log.
     * @type {Integer}
     */
    TotalClients {
        get => NumGet(this, 48, "uint")
        set => NumPut("uint", value, this, 48)
    }

    /**
     * The log  attributes that are set by using the <i>fFlagsAndAttributes</i> parameter of <a href="https://docs.microsoft.com/windows/desktop/api/clfsw32/nf-clfsw32-createlogfile">CreateLogFile</a> when a log is created.
     * @type {Integer}
     */
    Attributes {
        get => NumGet(this, 52, "uint")
        set => NumPut("uint", value, this, 52)
    }

    /**
     * The number of bytes of data that can remain pending on the internal flush queue before  the Common Log File System (CLFS)  automatically writes the data to disk.
     * @type {Integer}
     */
    FlushThreshold {
        get => NumGet(this, 56, "uint")
        set => NumPut("uint", value, this, 56)
    }

    /**
     * The sector size of the underlying disk geometry, in bytes.  
     * 
     * The sector size is assumed to be a multiple of 512 and consistent across log containers.
     * @type {Integer}
     */
    SectorSize {
        get => NumGet(this, 60, "uint")
        set => NumPut("uint", value, this, 60)
    }

    /**
     * The log sequence number (LSN) of the log archive tail.
     * @type {Integer}
     */
    MinArchiveTailLsn {
        get => NumGet(this, 64, "uint")
        set => NumPut("uint", value, this, 64)
    }

    /**
     * The LSN that marks the start of the active region of a log.
     * @type {Integer}
     */
    BaseLsn {
        get => NumGet(this, 72, "uint")
        set => NumPut("uint", value, this, 72)
    }

    /**
     * The value of <b>LastFlushedLsn</b> indicates that any LSNs smaller than the one specified are already  flushed to disk.
     * @type {Integer}
     */
    LastFlushedLsn {
        get => NumGet(this, 80, "uint")
        set => NumPut("uint", value, this, 80)
    }

    /**
     * The value of <b>LastLsn</b> indicates that any LSNs smaller than the one specified are already  appended to the log.
     * @type {Integer}
     */
    LastLsn {
        get => NumGet(this, 88, "uint")
        set => NumPut("uint", value, this, 88)
    }

    /**
     * The LSN of the last written restart record.  
     * 
     * If the log  does not have a  restart area, the LSN has the value of CLFS_LSN_INVALID.
     * @type {Integer}
     */
    RestartLsn {
        get => NumGet(this, 96, "uint")
        set => NumPut("uint", value, this, 96)
    }

    /**
     * The unique identifier for a log.
     * @type {Pointer<Guid>}
     */
    Identity {
        get => NumGet(this, 104, "ptr")
        set => NumPut("ptr", value, this, 104)
    }
}
