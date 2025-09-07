#Requires AutoHotkey v2.0.0 64-bit

/**
 * @namespace Windows.Win32.Media.MediaFoundation
 * @version v4.0.30319
 */
class DXVA_SampleFlags{

    /**
     * @type {Integer (Int32)}
     */
    static DXVA_SampleFlagsMask => 15

    /**
     * @type {Integer (Int32)}
     */
    static DXVA_SampleFlag_Palette_Changed => 1

    /**
     * @type {Integer (Int32)}
     */
    static DXVA_SampleFlag_SrcRect_Changed => 2

    /**
     * @type {Integer (Int32)}
     */
    static DXVA_SampleFlag_DstRect_Changed => 4

    /**
     * @type {Integer (Int32)}
     */
    static DXVA_SampleFlag_ColorData_Changed => 8
}
