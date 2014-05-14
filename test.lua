require "ircmess"

s = ircmess.parse(":cyka.yolo-swag.com 001 Xena :Welcome to IRC!\r\n")

assert(s.verb == "001")
assert(s.source == "cyka.yolo-swag.com")
assert(#s.argv == 2)
assert(s.argv[1] == "Xena")

print("Initial tests passed.")

s = ircmess.parse("PING :cyka.yolo-swag.com")
assert(s.source == "")
assert(s.verb == "PING")
assert(#s.argv == 1)
assert(s.argv[1] == "cyka.yolo-swag.com")

print("All tests passed!")

