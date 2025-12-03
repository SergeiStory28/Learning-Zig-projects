const std = @import("std");

pub fn main() !void {
    var myint: u8 = 5;
    myint = myint + 2;
    std.debug.print("myint: {}\n", .{myint});
}
