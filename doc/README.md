# TerrafromLab

Terraform si basa su il HashiCorp Configuration Language. Tale linguaggio è dichiarativo in quanto non ci proccupiamo di gestire niente ma solo di indicare quali risorse creare.
Il ciclo di vita di Terraform si base su 3 stati:

Init : fase in cui Terraform si preoccupa di caricare tutti i provider che abbiamo indicato per creare le risorse
Plan : fase in cui Terraform delina un idea di quali risorse abbiamo richiesto di deployare
Apply : fase in cui Terraform deploya le risorse indicate.


### Terraform State
Il Terraform State è un file in cui salviamo lo stato delle risorse create nella fase di Apply. Se lo stato durante una qualsiasi operazione risulta essere inconsistente allora tale operazione non sarà portata a termine.

### Install Terrafrom MacOS
- brew tap hashicorp/tap <br>
- brew install hashicorp/tap/terraform


### Terraform Block
Le risorse in Terraform sono definite in blocchi. Ogni blocco è marcato dal tipo di risorsa che si vuole creare e da un nome che indica quella risorse.

- block_name = resource
- resource_type = "locale_file"
- resource_name = "pet"

![alt text](<block.png>)

### Comandi Terraform
- terraform init
- terraform plan
- terraform apply -auto-approve
- terraform destroy -auto-approve

### Variable Block
Le variabili in terraform vengono definite in un file "variable.tf". La prassi per i blocchi di variabili dice di dichiarare per queste un valore di default, indicare il tipo (number, string, bool , any, list, set, map, object, tuple) e inserire una descrizione di tale variabile (opzionale). Usare la variabile in un altro .tf file può essere fatto usando la keyword "var.nome-variabile" oppure con "${var.nome-variabile}" se vogliamo inserire la variabile all'interno di una stringa.

- ad una variabile di tipo list possiamo accedervi normalmente con la notazione "var.list-name[index]"
    -   dichiarare il tipo di una lista di number ---- > list(number)
    -   dichiarare il tipo di una lista di string ---- > list(string)
- ad una variabile di tipo map possiamo accedervi normalmente con la notazione "var.map-name[key-of-map]"
    -   dichiarare il tipo di una map di number (i valori delle chiavi sono number) ---- > list(number)
    -   dichiarare il tipo di una map di string (i valori delle chaivi sono string) ---- > list(string)

### Variable Dependencies 
La dipendenza tra variabile può essere implicita quando ustiamo un attributo di una risorsa (ad esempio il filname della risorsa local_file) in un attributo di un altra risorsa.
    - es. filname = ${tipo_risorsa.nome_risorsa.attributo}
Invece abbiamo una dipendenza esplicita quando inseriamo all'interno di questa l'attributp "depends_on = [resource.resource_name]

### Variable Output
Con il comando : terraform output , riusciamo a visualizzare gli output del nostro progretto.

![alt text](<Screenshot 2024-04-26 alle 16.11.16.png>)