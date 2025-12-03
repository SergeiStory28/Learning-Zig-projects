const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello, World!\n", .{});
    std.debug.print("{s},{s}\n", .{ "Hello", " World!" });

    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;
    try stdout.print("Hello, {s}!\n", .{"world"});
    try stdout.flush();
}
