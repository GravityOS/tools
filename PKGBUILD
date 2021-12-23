# Maintainer: Ethan Lane <ethan@vylpes.com>
pkgname=gos-tools
pkgver=0.1.0
pkgrel=1
pkgdesc="A lot of tools used to make life easier on gos"
arch=(any)
url="https://github.com/gravityos/tools"
_reponame="tools"
license=('GPL')

source=(
"git+https://github.com/gravityos/tools.git")
md5sums=('SKIP')
depends=('git' 'bash' 'bluez-utils' 'gnupg' 'networkmanager' 'pacman-contrib' 'checkupdates-aur-gos' 'imagemagick' 'light' 'feh' 'paru')
makedepends=('git')

pkgver() {
  cd "$srcdir/$_reponame"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}


build() {
    return 0;
}

package() {
        cd "$srcdir/$_reponame"
        # install common packages
        install -Dm755 open "$pkgdir"/usr/bin/open
        install -Dm755 rankmirror "$pkgdir"/usr/bin/rankmirror
        install -Dm755 tos "$pkgdir"/usr/bin/tos
        install -Dm755 cleanup.sh "$pkgdir"/usr/bin/cleanup.sh
        install -Dm755 brightness "$pkgdir"/usr/bin/brightness
        install -Dm755 checkupdates-tos "$pkgdir"/usr/bin/checkupdates-tos
        install -Dm755 09-timezone.NM "$pkgdir"/etc/NetworkManager/dispatcher.d/09-timezone


        # gos-helper
        mkdir -p "$pkgdir"/usr/share/gos-helper
        for file in gos-helper/* ; do
            install -Dm755 "$file" "$pkgdir"/usr/share/"$file"
        done

        # gos tutorial
        mkdir -p "$pkgdir/usr/share/tos-tutorial/tree"
        for file in gos-tutorial/tree/* ; do
            install -Dm755 "$file" "$pkgdir"/usr/share/"$file"
        done
        install -Dm755 "gos-tutorial/main.sh" "$pkgdir/usr/share/gos-tutorial/main.sh"

        # setup the tutorial application
        install -Dm644 "gos-tutorial.desktop" "$pkgdir/usr/share/applications/gos-tutorial.desktop"
}
