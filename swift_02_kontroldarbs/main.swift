//
//  main.swift
//  swift_02_kontroldarbs
//
//  Created by Paulis Zabarovskis on 08/04/2022.
//

import Foundation
/*
 1) Uzrakstīt programmu personāla datu uzskaitei.
 2) Datu modelis:
    a) Personu datus izveidot kā masīvu no atsevišķām personām.
    b) Katrs masīva elements (persona) ir asociatīvs masīvs (turpmāk dictionary) ar veidu [String:String].
 */
var personas: [[String: String]]
/*
    c) Nodefinēt 4-5 atslēgas kā konstantes (let), piemēram: vārds, uzvārds, adrese, utt.
 */
let key1 = "Vārds"
let key2 = "Uzvārds"
let key3 = "Amats"
let key4 = "Adrese"
let key5 = "Pilsēta"
/*
    d) Izveidot 4-6 dictionary, katru ar iepriekš definētām atslēgām un izdomātiem datiem.
 */
let persona1 = [key1: "Dagnis", key2: "Pirmais", key3: "strādnieks", key4: "Pirmā līnija 3", key5: "Rīga"]
let persona2 = [key1: "Irmgarde", key2: "Otrā", key3: "strādniece", key4: "Otrā līnija 5", key5: "Daugavpils"]
let persona3 = [key1: "Daivis", key2: "Trešais", key3: "brigadieris", key4: "Trešā līnija 7", key5: "Liepāja"]
let persona4 = [key1: "Valda", key2: "Ceturtā", key3: "brigadiere", key4: "Ceturtā līnija 9", key5: "Jelgava"]
let persona5 = [key1: "Vija", key2: "Piektā", key3: "direktore", key4: "Piektā līnija 11", key5: "Ventspils"]
/*
    e) Visus personu dictionary pievienot galvenajam masīvam.
 */
personas = [persona1, persona2, persona3, persona4, persona5]
/*
 3) Datu attēlošana
    a) Uzrakstīt funkciju ar parametru, kas ir personas dictionary. Funkcijai vienā rindā ir jāizvada visi personas dati: vārds, uzvārds utt.
 */
func printLine(_ dati: [String: String]) {

  let printString = "Persona: " + dati[key1]! + " " + dati[key2]! + ", " + dati[key3]! + ", adrese: " + dati[key4]! + ", " + dati[key5]!
  print(printString)
}
/*
    b) Uzrakstīt citu funkciju ar parametru, kas ir masīvs no personu dictionary, kas ciklā izsauc iepriekšējo funkciju un attēlo visas personas.
 */
func printAll(_ dati: [[String : String]]) {
  print ("\n")
for persona in dati {
printLine(persona)
}
}
/*
    c) Bonusa uzdevums: otrajai funkcijai paredzēt otro parametru String, kas ir kāda no dictionary atslēgām. Funkcijā izveidot masīva šķirošanu pēc dotās atslēgas (pēc vārda, uzvārda, utt)
 */
func printAllSorted(_ dati: [[String : String]], _ key: String) {
    print ("\n")
  let sortedPersons = dati.sorted {
    $0[key]! < $1[key]!
  }
for persona in sortedPersons {
printLine(persona)
}
}
// Izvada vienas personas datus vienā rindā
printLine(persona2)

// Izvada visu personu datus
printAll(personas)

// Izvada visu personu datus, sakārtotus pēc atslēgas
printAllSorted(personas, key5)
