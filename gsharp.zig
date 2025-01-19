const std = @import("std");
const max_prompt_len = 256;

const PromptConfig = struct {
    universePadding: u8 = 2,
    linePadding: u8 = 3,
    prefix: []const u8 = "gsi",
};

pub fn writePrompt(
    buf: []u8,
    config: PromptConfig,
    ctx: []const u8,
    line_num: u32,
    indent_lvl: u32,
    universe_lvl: u32,
) ![]u8 {
    if (buf.len < max_prompt_len) return error.BufferTooSmall;
    return try std.fmt.bufPrint(
        buf,
        "{s}({s}@u{d:0>2}):{d:0>3}:{d}> ",
        .{
            config.prefix,
            ctx,
            universe_lvl,
            line_num,
            indent_lvl,
        }
    );
}

fn evalPrompt(in: []u8) ![]const u8{
    return std.mem.trimRight(u8, in, &std.ascii.whitespace);
}

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    var prompt_buf: [max_prompt_len]u8 = undefined;
    var line_num: u32 = 1;
    const indent_lvl: u32 = 0;
    const universe_lvl: u32 = 0;
    const ctx = "default";
    const config = PromptConfig{};

    while (true) {
        const prompt = try writePrompt(&prompt_buf, config, ctx, line_num, indent_lvl, universe_lvl);
        try stdout.writeAll(prompt);
        var input_buf: [1024]u8 = undefined;
        if (try stdin.readUntilDelimiterOrEof(&input_buf, '\n')) |line| {
            line_num += 1;
            const evaluated = try evalPrompt(line);
            try stdout.writeAll(evaluated);
            if (0 < evaluated.len) {
                try stdout.writeAll("\n");
            }
        } else break;
    }
    try stdout.writeAll("\n");
}

