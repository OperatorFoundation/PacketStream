import Foundation

public protocol PacketStream
{
    func nextPacket() -> (Date, Data)
}
