# PFC Matilde Gómez-Ojeda, Cuaderno del profesor

## Scaffolding
```
$ rails g scaffold students name:string birthday:date
```

## Para migraciones

```
$ rake db:migrate && rake db:test:prepare
```

## Para tests

```
$ rspec spec/
```