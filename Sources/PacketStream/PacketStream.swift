import Foundation

public struct TimestampedPacket
{
    public let timestamp: Date
    public let payload: Data

    public init(timestamp: Date, payload: Data)
    {
        self.timestamp = timestamp
        self.payload = payload
    }
}

public struct CaptureResult
{
    public let packets: [TimestampedPacket]
    public let dropped: Int

    public init(packets: [TimestampedPacket], dropped: Int)
    {
        self.packets = packets
        self.dropped = dropped
    }
}

public protocol PacketStream
{
    func startCapture() throws
    func nextCaptureResult() -> CaptureResult?
    func stopCapture() throws
}
