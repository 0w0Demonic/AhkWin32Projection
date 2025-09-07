#Requires AutoHotkey v2.0.0 64-bit

/**
 * The WpdAttributeForm enumeration type describes how a property stores its values.
 * @remarks
 * This enumeration is used by the [WPD\_PROPERTY\_ATTRIBUTE\_FORM](attributes.md) property to describe how a property's data is stored.
 * @see https://learn.microsoft.com/windows/win32/wpd_sdk/wpdattributeform
 * @namespace Windows.Win32.Devices.PortableDevices
 * @version v4.0.30319
 */
class WpdAttributeForm{

    /**
     * @type {Integer (Int32)}
     */
    static WPD_PROPERTY_ATTRIBUTE_FORM_UNSPECIFIED => 0

    /**
     * @type {Integer (Int32)}
     */
    static WPD_PROPERTY_ATTRIBUTE_FORM_RANGE => 1

    /**
     * @type {Integer (Int32)}
     */
    static WPD_PROPERTY_ATTRIBUTE_FORM_ENUMERATION => 2

    /**
     * @type {Integer (Int32)}
     */
    static WPD_PROPERTY_ATTRIBUTE_FORM_REGULAR_EXPRESSION => 3

    /**
     * @type {Integer (Int32)}
     */
    static WPD_PROPERTY_ATTRIBUTE_FORM_OBJECT_IDENTIFIER => 4
}
