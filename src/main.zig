const std = @import("std");

pub fn main() void {
    const ptr: *allowzero i32 = @ptrFromInt(0);
    const segfault = ptr.*;
    std.debug.print("zigfaulting! {}\n", .{segfault});
}
