# Nvim config Antoine Queru

Cette configuration se base sur le starter de lazyvim avec quelques ajustements pour customiser un peu mieux le foncitonnement

> [!NOTE]
> Dans la suite du readme je ferais référence à LazyVim par lazy pour aller plus vite.


## Spécificités 

### Dossier plugins

Le fichier `example.lua` contient tous les plugins non modifiés du starter lazyVim. 

Les fichiers spécifiques ont été ajoutés afin de configurer plus finements certains plugins et en rajouter de nouveaux.

#### `catppuccin.lua`

Thème personnalisé pour remplacer le thème par défaut de Lazy.

#### `completions.lua`

Permet d'ajouter les snippets de code et de les configurer. 

J'ai du désactiver blink pour éviter les conflits avec la nouvelle configuration.

#### `lsp-config.lua`

Permet de configurer les lsp, pour l'instant j'ai configuré :

- python
- postgres
- lua
- php

#### `markview.lua`

Pour avoir de la documentation en `.md` plus sympathique.

#### `neo-tree.lua`

Configuration de neo-tree. Il faut penser à désactiver l'exporer snacks pour que cela fonctionne correctement. Cf. point suivant. 

#### `none-ls.lua`

Diagnostic et formattage de différents langages.

Il faudra se repencher sur certaines config car cela ne semble pas fonctionner pour tous les langages.

#### `nvim-tree.lua`

Un peu doublon de neo-tree, je ne savais pas lequel choisir, il semble un peu plus complexe a configurer que neo-tree donc il est présent mais désactivé pour l'instant.

#### `snacks.lua`

Ajouté simplement pour permettre de désactiver l'explorer qui est en doublon avec neo-tree.

#### `treesitter.lua`

Pas mal de soucis de config avec treesitter car ils ont fait une mise à jour qui casse pas mal de choses.

Par exemple je n'ai pas réussi à le faire fonctionner sur ubuntu 22.04 LTS.



