// zls type: u32
const from_primitive_hint = undefined;
//    ^^^^^^^^^^^^^^^^^^^ (u32)()

// zls type: ?bool
const from_optional_hint = undefined;
//    ^^^^^^^^^^^^^^^^^^ (?bool)()

// zls type: *const u8
const from_pointer_hint = undefined;
//    ^^^^^^^^^^^^^^^^^ (*const u8)()

// zls type: []const u8
const from_slice_hint = undefined;
//    ^^^^^^^^^^^^^^^ ([]const u8)()

const Namespace = struct {
    const Inner = struct {};
};

// zls type: Namespace.Inner
const from_dotted_hint = undefined;
//    ^^^^^^^^^^^^^^^^ (Inner)()

const explicit_type_wins: bool = undefined;
//    ^^^^^^^^^^^^^^^^^^ (bool)()

const normal_variable = 5;

const normal_variable2 = null;

const variable_as = @as(?i32, null);
