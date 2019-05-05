configure git hooks (> git 2.9)

```
$ git config core.hooksPath .githooks
```

make hooks executabe (not required on windows)

```
$ chmod -R +x .githooks/
```

disable fast-forward merges

```
$ git config merge.ff false
```

only fast-forward pulls

```
$ git config pull.ff only
```
