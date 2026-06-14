-- Basic exploit usage examples

-- Load the exploit tool
local exploit = _G.Exploit

-- Example 1: Simple print
print("=== Example 1: Simple Print ===")
exploit:execute("print('Hello from exploit!')")

-- Example 2: Math operations
print("\n=== Example 2: Math ===")
exploit:execute([[
    local result = 5 + 3
    print("5 + 3 = " .. result)
]])

-- Example 3: Table operations
print("\n=== Example 3: Tables ===")
exploit:execute([[
    local my_table = {a = 1, b = 2, c = 3}
    for key, value in pairs(my_table) do
        print(key .. " = " .. value)
    end
]])

-- Example 4: Function definition
print("\n=== Example 4: Functions ===")
exploit:execute(([[
    local function greet(name)
        return "Hello, " .. name .. "!"
    end
    print(greet("Roblox"))
]]))

-- Example 5: Loops
print("\n=== Example 5: Loops ===")
exploit:execute([[
    for i = 1, 5 do
        print("Iteration " .. i)
    end
]])
