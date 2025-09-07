#Requires AutoHotkey v2.0.0 64-bit

/**
 * CLUS_GROUP_START_SETTING (msclus.h) enumerates the start settings for a cluster group.
 * @see https://learn.microsoft.com/windows/win32/api/msclus/ne-msclus-clus_group_start_setting
 * @namespace Windows.Win32.Networking.Clustering
 * @version v4.0.30319
 */
class CLUS_GROUP_START_SETTING{

    /**
     * Always start the cluster.
     * @type {Integer (Int32)}
     */
    static CLUS_GROUP_START_ALWAYS => 0

    /**
     * Do not start the cluster.
     * @type {Integer (Int32)}
     */
    static CLUS_GROUP_DO_NOT_START => 1

    /**
     * The cluster can be started.
     * @type {Integer (Int32)}
     */
    static CLUS_GROUP_START_ALLOWED => 2
}
