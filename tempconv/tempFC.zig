const std = @import("std");

pub fn main() !void {
    const lower: i32 = 0;
    const upper: i32 = 300;
    const step: i32 = 20;

    var fahr: i32 = lower;
    while (fahr <= upper) {
        const celsius: i32 = @divTrunc(5 * (fahr - 32), 9);
        std.debug.print("{}\t{}\n", .{ fahr, celsius });
        fahr = fahr + step;
    }
}
