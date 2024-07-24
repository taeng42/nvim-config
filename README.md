# if can't find glow path
## macOS or Linux
```
brew install glow;
```

## macOS (with MacPorts)
```
sudo port install glow;
```

## Arch Linux (btw)
```
pacman -S glow;
```

## Void Linux
```
xbps-install -S glow;
```

## Nix
```
nix-env -iA nixpkgs.glow;
```

## FreeBSD
```
pkg install glow;
```

## Solus
```
eopkg install glow;
```

## Windows (with Scoop or Chocolatey)
```
scoop install glow;
choco install glow;
```

## Android (with termux)
```
pkg install glow;
```

## Debian/Ubuntu
```
sudo mkdir -p /etc/apt/keyrings;
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg;
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list;
sudo apt update && sudo apt install glow;
```
## Fedora/RHEL
```
echo '[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo;
sudo yum install glow;
```
# endif can't find glow path
