# mask

"mask" is CLI tool to mask IP address and mail address

# Install

Download mask file as executable in your PATH dir.

```bash
$ curl https://raw.githubusercontent.com/yasuhiroki/mask/main/mask -O && chmod 755 mask
```

## zplug

```zsh
zplug "yasuhiroki/mask", as:command, use:mask
```

# Usage

```bash
$ echo "1.12.123.123" | mask
xxx.xxx.xxx.xxx

$ echo "hoge123_test.test+1@example.com" | mask
xxx@xxx.xxx

$ echo "1.12.123.123,test,hoge@example.com" | mask
xxx.xxx.xxx.xxx,test,xxx@xxx.xxx
```

# LICENSE

[MIT](./LICENSE)
