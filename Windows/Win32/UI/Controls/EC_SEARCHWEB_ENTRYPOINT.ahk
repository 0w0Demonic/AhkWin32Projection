#Requires AutoHotkey v2.0.0 64-bit

/**
 * Defines constants that indicate the entry point of a web search.
 * @remarks
 * 
 * @see https://learn.microsoft.com/windows/win32/api/commctrl/ne-commctrl-ec_searchweb_entrypoint
 * @namespace Windows.Win32.UI.Controls
 * @version v4.0.30319
 */
class EC_SEARCHWEB_ENTRYPOINT{

    /**
     * Entry point is external.
     * @type {Integer (Int32)}
     */
    static EC_SEARCHWEB_ENTRYPOINT_EXTERNAL => 0

    /**
     * Entry point is a context menu.
     * @type {Integer (Int32)}
     */
    static EC_SEARCHWEB_ENTRYPOINT_CONTEXTMENU => 1
}
