# Meus PointFiles

Aqui estao os arquivos pontos do meu sistema (Arch by the Way).

## Requirements

Pai usa STOW, entao baixa ai.

### Stow

```
pacman -S stow
```

## Installation

Clona ai po

```
$ git clone git@github.com:r-vilela/pointfiles.git
$ cd pointfiles
```

Agora so usar o stow e para criar os SymLinks e GG.

```
$ stow .
```

Para conectar no na rede eduroam:

```
$ nmcli connection add type wifi con-name eduroam ifname wlan0 ssid eduroam \
    wifi-sec.key-mgmt wpa-eap 802-1x.eap peap \
    802-1x.identity SEU_LOGIN \
    802-1x.password SUA_SENHA \
    802-1x.phase2-auth mschapv2 \
    802-1x.system-ca-certs no
```

