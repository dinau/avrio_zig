### Generating the modified "src/atmega328p.zig" file

---

Just run `make` commad.

```sh
$ make

zig build -Dgen
cp zig-out/atmega328p_original_temp.zig ./src/
ruby modIoDefinitions.rb src/atmega328p_original_temp.zig > src/atmega328p.zig
```

#### The contents of modifications

---

See [modIoDefinitions.rb](./modIoDefinitions.rb)
