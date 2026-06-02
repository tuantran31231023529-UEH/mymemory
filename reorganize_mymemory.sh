#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p "BanThan/NghienCuu" "GiaDinh/DamCuoiAnhTruong" "GiaDinh/Me" "GiaDinh/Ngoai" "BanBe/DaiHoc" "BanBe/ToaAn" "BanBe/ChuyenDi"

echo "Moving personal achievement files into BanThan/NghienCuu..."
for f in "cac giai nc.jpg" "di len nhan giai.mp4" "duoc Thuy tang.jpg" "KetQuaDangKyHocPhan_31231023529.pdf"; do
  if [ -e "$f" ]; then mv -v "$f" "BanThan/NghienCuu/"; fi
done
for f in giai\ A*; do
  if [ -e "$f" ]; then mv -v "$f" "BanThan/NghienCuu/"; fi
done

echo "Moving family files into GiaDinh..."
for f in "me 9.jpg" "me.jpg" "me 2.jpg" "me 3.jpg" "me 4.jpg" "me 5.jpg" "me 6.jpg" "me 7.jpg" "me 8.jpg" "me va ngoai 2.jpg" "me va ngoai 3.jpg" "me va ngoai 4.jpg" "me va ngoai 5.jpg" "me va ngoai.jpg" "me, ngoai va toi.jpg" "toi va me 2.jpg" "toi va me.jpg"; do
  if [ -e "$f" ]; then mv -v "$f" "GiaDinh/Me/"; fi
done
for f in "huynh anh.jpg" "huynh anh 2.jpg" "dam cuoi anh truong.jpg" "dam cuoi anh truong 2.jpg" "dam cuoi anh truong 3.jpg" "dam cuoi anh truong 4.jpg"; do
  if [ -e "$f" ]; then mv -v "$f" "GiaDinh/DamCuoiAnhTruong/"; fi
done
for f in ngoai*; do
  if [ -e "$f" ] && [ -f "$f" ]; then mv -v "$f" "GiaDinh/Ngoai/"; fi
done

echo "Moving friends and team files into BanBe..."
for f in "4 dua su kien.jpg" "recap cuoi ki.jpg" "thach, loc.jpg" "toc bui.jpg" "ban UEH 10.png" "ban UEH 11.jpg" "ban UEH 12.jpg" "ban UEH 13.jpg" "ban UEH 14.jpg" "ban UEH 15.mp4" "ban UEH 16.jpg" "ban UEH 17.png" "ban UEH 18.png" "ban UEH 19.jpg" "ban UEH 2.jpg" "ban UEH 20.jpg" "ban UEH 21.jpg" "ban UEH 21.mp4" "ban UEH 22.jpg" "ban UEH 23.mp4" "ban UEH 24.mp4" "ban UEH 3.mp4" "ban UEH 4.mp4" "ban UEH 5.jpg" "ban UEH 6.jpg" "ban UEH 7.jpg" "ban UEH 8.jpg" "ban UEH 9.mp4" "ban UEH.jpg" "usvc 2.jpg" "usvc 3.jpg" "usvc 4.jpg" "usvc 4mp4" "usvc 5jpg" "usvc 6.mp4" "usvc chup chung.jpg" "Nhom 4 dua 2.jpg" "Nhom 4 dua 3.jpg" "Nhom 4 dua 4.jpg" "Nhom 4 dua 5.jpg" "Nhom 4 dua 6.jpg" "Nhom 4 dua 7.mp4" "Nhom 4 dua 8.png" "cap 3 1.jpg" "cap 3 10.mp4" "cap 3 11.mp4" "cap 3 12.mp4" "cap 3 13.mp4" "cap 3 14.jpg" "cap 3 15.jpg" "cap 3 16.jpg" "cap 3 17.mp4" "cap 3 18.mp4" "cap 3 19.jpg" "cap 3 2.jpg" "cap 3 20.jpg" "cap 3 21.mp4" "cap 3 3.jpg" "cap 3 4.mp4" "cap 3 5.mp4" "cap 3 6.mp4" "cap 3 7.mp4" "cap 3 8.mp4" "cap 3 9.mp4" "cap 3.jpg" "4 dua su kien.jpg"; do
  if [ -e "$f" ]; then mv -v "$f" "BanBe/DaiHoc/"; fi
done
for f in "di toa"*; do
  if [ -e "$f" ]; then mv -v "$f" "BanBe/ToaAn/"; fi
done
for f in "di "*; do
  if [ -e "$f" ] && [[ "$f" != di\ toa* ]]; then mv -v "$f" "BanBe/ChuyenDi/"; fi
done

echo "Reorganization complete. Please verify the moved files."