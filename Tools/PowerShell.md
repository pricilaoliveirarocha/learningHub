# PowerShell Commands 💻

`wsl -l -v`: lista todas as distribuições instaladas com seus estados e versões.    
`wsl --install -d <distro>`: instala a distribuição Linux especificada.  
`wsl --set-default <distro>`: define a distribuição padrão para abrir ao executar wsl.  
`wsl -d <distro>`: inicia uma distribuição específica.  
`wsl --set-version <distro> 2`: atualiza a distribuição para a versão 2 do WSL.  
`wsl --unregister <distro>`: remove completamente a distribuição do sistema.  
`wsl --export <distro> <arquivo.tar>`: exporta a distribuição para um arquivo de backup.  
`wsl --import <nome> <diretório> <arquivo.tar>`: importa uma distribuição a partir de um arquivo de backup.  
`wsl --shutdown`: encerra todas as instâncias e o serviço do WSL.  
`wsl --set-default-version <1 ou 2>`: define a versão padrão do WSL para novas distribuições.  
`wsl -l -v --all`: lista todas as distribuições, incluindo ocultas, com seus status.  
`<distro> config --default-user <usuário>`: altera o usuário padrão da distribuição (ex: `ubuntu config --default-user pri`)  
`mkdir C:\xampp\htdocs\dir`: Cria novo diretório.  
`fsutil file setCaseSensitiveInfo "C:\xampp\htdocs\sga_case" enable`: Ativa case-sensitive na pasta passada.
`shutdown /r`: Reiniciar o Windows.
`shutdown /r /f`: Força um reinício imediato.
`sysdm.cpl`: Abre as propriedades do sistema.