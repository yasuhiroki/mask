#!/usr/bin/env bash

echo "1.12.123.123" | ./mask | grep -sq "xxx.xxx.xxx.xxx" || echo "[fail] test1"
echo "hoge123_test.test+1@example.com" | ./mask | grep -sq "xxx@xxx.xxx" || echo "[fail] test2"
echo "1.12.123.123 test hoge@example.com" | ./mask | grep -sq "xxx.xxx.xxx.xxx test xxx@xxx.xxx" || echo "[fail] test3"
echo "1.12.123.123,test,hoge@example.com" | ./mask | grep -sq "xxx.xxx.xxx.xxx,test,xxx@xxx.xxx" || echo "[fail] test4"
