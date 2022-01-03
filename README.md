# Kaos-love

A revamped version of [kaos-web](https://github.com/bsuth/kaos-web) written in
[Lua love](https://love2d.org/wiki/Main_Page).

## Coding Conventions
- [Formatter: StyLua](https://github.com/JohnnyMorganz/StyLua)
- [Style Guide: Olivine Labs](https://github.com/Olivine-Labs/lua-style-guide)

## Luarocks

Luarocks dependencies are installed to a local tree.

```bash
luarocks --lua-version 5.1 --tree ./luarocks_modules install --only-deps ./kaos-0.1-1.rockspec
```
