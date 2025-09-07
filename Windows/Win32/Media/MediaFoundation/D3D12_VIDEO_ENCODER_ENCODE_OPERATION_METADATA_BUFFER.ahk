#Requires AutoHotkey v2.0.0 64-bit
#Include ..\..\..\..\Win32Struct.ahk

/**
 * Represents a buffer containing metadata about an ID3D12VideoEncodeCommandList2::EncodeFrame operation.
 * @remarks
 * 
 * @see https://learn.microsoft.com/windows/win32/api/d3d12video/ns-d3d12video-d3d12_video_encoder_encode_operation_metadata_buffer
 * @namespace Windows.Win32.Media.MediaFoundation
 * @version v4.0.30319
 */
class D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER extends Win32Struct
{
    static sizeof => 16

    static packingSize => 8

    /**
     * A pointer to an [ID3D12Resource](..//d3d12/nn-d3d12-id3d12resource.md) representing the metadata buffer.
     * @type {Pointer<ID3D12Resource>}
     */
    pBuffer {
        get => NumGet(this, 0, "ptr")
        set => NumPut("ptr", value, this, 0)
    }

    /**
     * The offset into the associated buffer.
     * @type {Integer}
     */
    Offset {
        get => NumGet(this, 8, "uint")
        set => NumPut("uint", value, this, 8)
    }
}
