This is asobininn's nvim setting.

# Setup procedure
## 1. install nvim
```
apt install neovim
```
## 2. clone this
```
mkdir -p ~/.config/
cd ~/.config/
git clone https://github.com/asobininn/nvim
```
## 3. dein setting
```
cd ~/.config/nvim
mkdir -p ~/.cache/dein
sh ./installer.sh ~/.cache/dein
```

## 4. dein update
```
nvim
:call dein#update()
```

## 5. install nodejs npm yarn
```
apt install nodejs
apt install npm
sudo npm install -g yarn
```

## 6. install coc extension
```
nvim
:CocInstall coc-json
:CocInstall coc-tsserver
:CocInstall coc-ccls
:CocInstall coc-rust-analyzer
:CocInstall coc-python
```

## 7. ccls setting
```
apt install ccls
cd ~/.config/coc/extensions/node_modules/coc-ccls
ln -s node_modules/ws/lib lib
```
