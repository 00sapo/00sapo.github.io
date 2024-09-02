+++
title = "Una semplice introduzione a Git"
date = "2021-01-14T09:14:35"
tags = ["software", "teaching", "remote", "git"]
categories = ["software"]
banner = "/img/git-intro.png"
comments = true
showDate = true
+++

L'idea di git è di salvare varie versioni apportate ai file in un repository.

Le modifiche apportate si salvano sottoforma di **commit**. Ogni commit contiene le
nuove versioni dei file modificati che si vogliono salvare. Idealmente, ogni commit
dovrebbe rispettare il principio di singola responsabilità: dovrebbe cioè riguardare una
sola funzionalità o caratteristica del software. Ogni commit porta con se un messaggio
che descrive brevemente cosa è stato modificato, un timestamp non modificabile e un hash
che consente di identificarlo univocamente.

Il **repository** conterrà quindi una serie di commit ordinati temporalmente. I commit
possono essere raggruppati in "branch" (rami), che si usano per separare strade
differenti che il software può prendere. Un commit può appartenere a più branch. I
branch possono fondersi tra di loro "merge". Se il merge genera dei conflitti, ad
esempio se entrambi i branch modificano una certa parte di un file, viene lasciato
all'utente la scelta di cosa tenere e cosa togliere.

Puoi immaginare git come se ci fossero diverse aree di memoria per lo stesso codice sorgente.
Le aree di memoria possono rappresentare versioni diverse dello stesso codice oppure la stessa
identica versione. Le aree di memoria sono le seguenti:

- La _working directory_ è la directory di lavoro dove trovi i file che stai modificando. All'interno vi sarà una directory ".git" che contiene tutti i dati sul repository.
- La _staging area_ è l'insieme dei file modificati e tracciati dal repository (se crei un nuovo file, non viene automaticamente tracciato)
- Il _repository_ è la vera e propria memoria delle versioni, esiste in locale e ha una o più copie remote.

Questa figura schematizza i principali comandi di git e come questi interagiscono con le
aree di memoria. Le freccie dell'immagine indicano i comandi da usare per
aggiungere/togliere dal tracciamento, per salvare le modifiche (commit) e per aggiornare
il codice con modifiche avvenute sul repository remoto (ad esempio modifiche effettuate
da altri utenti).
{{< figure src="/img/git-intro.png" >}}

In tutti i software grafici (gitg, gitahead, etc.) trovi sempre la possibilità di
effettuare queste operazioni di base. Le cose si complicano quando si comincia ad usare
branch differenti, ma per ora non ci interessa. La cosa importante da capire è che git
_è_ effettivamente pensato per salvare la Storia dello sviluppo; la Storia non si può
cancellare e quindi non si può tornare indietro. Esistono tool appositi, ma l'idea di
usare git è accettare che ogni modifica apportata non deve _mai_ essere cancellata,
nemmeno se introduce un errore; è invece più utile ricordarle per capire i motivi per
cui il softwaare si è sviluppato in un certo modo.
