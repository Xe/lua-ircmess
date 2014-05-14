require "ircmess"

s = ircmess.parse(":cyka.yolo-swag.com 001 Xena :Welcome to IRC!\r\n")

print(s.source)
print(s.verb)
print(#s.argv)
print(s.argv[1])
print(s.argv[2])

