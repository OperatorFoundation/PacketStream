import Foundation

public struct TimestampedPacket
{
    public let timestamp: Date
    public let payload: Data
}

public struct CaptureResult
{
    public let packets: [TimestampedPacket]
    public let dropped: Int
}

public protocol PacketStream
{
    func startCapture()
    func nextCaptureResult() -> CaptureResult?
    func stopCapture()
}
