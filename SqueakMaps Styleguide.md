# SqueakMaps Styleguide

## Variablen- und Methodenbenennung

- camelCase benutzen
- Instanzvariablen und temporäre Variablen beginnen mit einem kleinen Buchstaben
- Klassennamen, Klassenvariablen, Globale Variablen und Pool Dictionaries sollten groß geschrieben werden
- Klassennamen werden mit `SMA` geprefixt
- Variablennamen, die auf die Implementation hinweisen vermeiden (z.B. `properName` anstatt `properNameString`)
- Deskriptive Variablennamen (z.B. `timeOfToday` anstatt `tod`)
- Deskriptive Methodennamen (was macht die Methode?). Sie sollten dabei nicht aussagen wie die Methode arbeitet (nicht `linearSearchFor:` sondern `searchFor:`)
- Methoden, die einen boolean zurückgeben, sollten mit `is, has`, etc benannt werden und sich in der Methodenkategorie testing befinden

## Methodenaufbau

```smalltalk
methodenname: aClass methode: anOtherClass
    "Kommentar für die ganze Methode in der zweiten Zeile"
                            <- leere Zeile
    | lokale Variablen |    <- Leerzeichen um Pipes
                            <- leere Zeile
    Statement1.
    Statement2.

    "Kommentar für die Zeile darunter"
    Statement3.
    ^ letztesStatementOhnePunkt
```

- Dabei immer Präfix [a | an] + Klassenname für Parameter wie zB. `aString, anObject, aCollectionOfGeoCoordinates` (sollte ein Klassenname mehrfach vorkommen dann semantisch benennen, zB: `at: aKeySymbol put: aValueSymbol`)
- auch in den automatisch generierten Accessorn die Klassennamen umbenennen (es sollte nirgendwo `anObject` stehen)
- letzte Zeile einer Methode oder eines Blockes ohne einen Punkt am Ende
- Richtwert Methodenlänge: 7 Zeilen (Kommentare und Leerzeilen zählen nicht dazu.)
- Zeilenlänge max. 60 Zeichen oder Standard-Browser Width
- Immer spezifische Getter/Setter für jede Instanzvariable verwenden (**auf Instanzvariablen mit `self` zugreifen**)
- Konstanten möglichst auf Instanzseite definieren (es sei denn diese werden von anderen Klassen benötigt, die nicht unmittelbar eine Instanz eines Objektes enthalten, dann ist die Klassenseite auch in Ordnung)

## Blöcke und Conditional-Statements

- Format bei Blöcken mit nur einem sehr kurzen Test und kurzem statement:
```smalltalk
test ifTrue: [statement]
```

- Format bei nur einem Test + längerem Statement oder sobald ein Block Multiline ist:
```smalltalk
test ifTrue: [
    self 
        statement1;
        statement2]
```

- Format bei mehreren Tests und Blöcken mit mehreren Statements:
```smalltalk
test
    ifTrue: [
        statement1.
        statement2]
    ifFalse: [
        statement1.
        statement2]
```
- Format bei ineinander verschachtelten Tests:
```smalltalk
test ifTrue: [
    test2 
        ifTrue: [
            statement1;
            statement2]
        ifFalse: [statement2]]
```

- Verwenden von `ifTrue, ifFalse, ifEmpty, ifNotEmpty, ifNil ifNotNil, etc...` (anstatt bspw. `isEmpty ifTrue:`)

## Kaskaden

- wenn Kaskaden verwendet werden können, sollten diese verwendet werden
- Kaskaden werden um einen **Tab** eingerückt
- eine Kaskade an deren Ende das Objekt an sich zurückgegeben werden soll, wird immer mit yourself beendet:

```smalltalk
all := OrderedCollection new
    add: 5;
    add: 7;
    yourself.
```

```smalltalk
self
    addMorph: aMorhp;
    extent: aPoint.
```

## Collections

- wenn lokale Variablen nur innerhalb eines Blockes benötigt werden, dann sollten sie auch in diesem definiert werden und nicht für die gesamte Methode
- Collections Methoden benutzen (z.B. `do:, collect:, select:, reduce:, detect:, ...`)
- bei collection Operationen (zB. `do:, collect:, ...`) den Parameter des Blockes semantisch benennen, es sei denn es sind triviale Operationen auf dem Element, dann `each`

```smalltalk
aCollection do: [:each |
    statement1.
    statement2]
```

## Klammerung

- keine defensive Klammerung verwenden (Klammern, die nicht nötig sind) -> PrettyPrint ausprobieren

## Kommentieren

- Kommentare in Englisch
- Ungewöhnlichen Code dokumentieren
- Kommentare sollten sagen warum code so geschrieben wurde, nicht was er macht
- Aktiv benutzen, nicht Passiv, wenn Methodenkommentare geschrieben werden

## Formatierung

- keine Zahlen hard-coden (außer `0 , 1, 0.5, 2`)
- vor und hinter einem Binären Operator und `|` jeweils ein Leerzeichen
- Leerzeichen rund um `@`
- Leerzeichen nach "^": `^ aReturnedObject`
- Leerzeichen vor und nach Punkt zwischen Items und vor/nach den Klammern: `{ 0 . 0 . 1 . 1 }`
- Leerzeichen vor einer öffnenden Klammer und nach einer schließenden Klammer
- Leerzeichen nach, aber nicht vor den folgenden Symbolen: `, ;`
- Lange Befehle mit vielen Parametern untereinanderschreiben, um Zeilenumbrüche zu vermeiden
- testen der Klassenzugehörigkeit mit `anObject class` vermeiden (verlässt die Domäne)

## Tests
- Mock Objects für API Services verwenden
- alle `assert` Statements am Methodenende
- Leerzeile vor dem Block der `assert Statements` -> Trennung von Test spezifischem Setup und `asserts`
- Test-übergreifendes setup/teardown in entsprechende Methoden `setup, tearDown` auslagern -> Instanzvariablen für mehrfach verwendete Objekte auf der Testklasse anlegen
- Styleguide für normale Methoden sollte auch in Test Methoden angewendet werden

## GitHub Commit Messages

- kurz und möglichst deskriptiv