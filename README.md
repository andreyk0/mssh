mssh
====

Drives multiple SSH sessions with the same input.

```
# ./dist/build/mssh/mssh --help
Drive multiple SSH sessions with the same keyboard input

mssh [OPTIONS] [ITEM]
  Usage: mssh host1 host2.foo.bar host4,5 host6,7:9 host10:20:2.

Common flags:
  -s --sshcommand=ITEM  ssh command to run for each hostname, defaults to
                        'ssh -T'
  -c --color            turn on color output
  -o --outfile=ITEM     save output to file
  -? --help             Display help message
  -V --version          Print version information

Host names are expanded:
 [foo1,2.your.prod] becomes [foo1.your.prod, foo2.your.prod],
 [foo1:3.your.prod] becomes [foo1.your.prod, foo2.your.prod, foo3.your.prod]
 [foo1:5:2.your.prod] becomes [foo1.your.prod, foo3.your.prod, foo5.your.prod]

To quickly access prod machines via a gateway host add something like this to
your ~/.ssh/config
  Host *.your.prod
  ProxyCommand ssh -q -o ... your.gw.com nc %h %p
  TCPKeepAlive yes

```
