#!/usr/bin/env bash

echo "1.12.123.123" | ./mask | fgrep -sq "***.***.***.***" || echo "[fail] test1"
echo "hoge123_test.test+1@example.com" | ./mask | fgrep -sq "***@***.***" || echo "[fail] test2"
echo "1.12.123.123 test hoge@example.com" | ./mask | fgrep -sq "***.***.***.*** test ***@***.***" || echo "[fail] test3"
echo "1.12.123.123,test,hoge@example.com" | ./mask | fgrep -sq "***.***.***.***,test,***@***.***" || echo "[fail] test4"
