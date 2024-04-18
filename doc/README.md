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