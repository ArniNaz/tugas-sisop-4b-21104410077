#!/bin/sh
# UAS_arni.sh

clear
echo "\t------------------------------------------------------"
echo "\t\tTugas UAS Praktikum Sistem Operasi"
echo "\t------------------------------------------------------"
echo

# menampilkan waktu akses sistem
tanggal=$(date +"%Y-%m-%d")
waktu=$(date +"%H:%M:%S")
echo "Diakses pada:"
echo "Tanggal: $tanggal"
echo "Waktu: $waktu"
echo

# profil
nama="ARNI NAZIRA"
nim="21104410077"
kelas="TI-4B"
echo "Profil Saya!"
echo "Nama: $nama"
echo "NIM: $nim"
echo "Kelas: $kelas"
echo

# instruksi test dengan konstruksi if
echo -n "Username:  "
read user
if test "$user" = Mahasiswa
then
	echo
	echo "Selamat Datang $user $nama!!"
	echo
else
	echo
	echo "Maaf, username Anda tidak valid!!"
	echo
	exit 0
fi

# program menu makanan
echo "\t---------------------------------------------------------"
echo "\t\tSELAMAT DATANG DI PROGRAM KASIR SEDERHANA!"
echo "\t---------------------------------------------------------"
echo

# tampilkan menu
tampil_menu() {
	echo "\t\t+*******************************************************+"
	echo "\t\t|	Menu Makanan Hari Ini: 				|"
	echo "\t\t|*******************************************************|"
	echo "\t\t|	1. Bakso Kampus - Rp 10.000 			|"
	echo "\t\t|	2. Ayam Geprek Sa'i (paket3) - Rp 19.000 	|"
	echo "\t\t|	3. Mie Gacoan - Rp 9.500 			|"
	echo "\t\t|	4. Nasi Padang - Rp 11.000 			|"
        echo "\t\t|    	5. KFC - Rp 30.000               		|"
	echo "\t\t|	6. Keluar 					|"
	echo "\t\t+*******************************************************+"
	echo
	read -p "Pilih menu (1/2/3/4/5/6): " pilih
}

# jumlah yang ingin dibeli
input_jumlah() {
	read -p "Masukkan jumlah yang ingin dibeli: " jumlah
	echo "$jumlah"
}

# perhitungan
while true; do
	tampil_menu
	case $pilih in
	1)
		harga=10000
		nama_menu="Bakso Kampus"
	;;
	2)
		harga=19000
		nama_menu="Ayam Geprek Sa'i(paket3)"
	;;
	3)
		harga=9500
		nama_menu="Mie Gacoan"
	;;
	4)
		harga=11000
		nama_menu="Nasi Padang"
	;;
	5)
		harga=30000
		nama_menu="KFC"
	;;
	6)
		echo
		echo "\tTerima Kasih Atas Kunjungan Anda."
		echo "\t-------------------------------------------------------"
		echo "\tSilahkan Datang Kembali!!:)"
		echo
		exit 0
	;;
	*)
		echo "\tMaaf, menu yang Anda cari tidak tersedia."
		continue
	;;
	esac

	jumlah=$(input_jumlah)

	# hitung total harga
	total_harga=$((harga * jumlah))
	total=$((total + total_harga))

	echo
	echo "\tAnda memilih untuk membeli $nama_menu sebanyak $jumlah porsi."
	echo "\t----------------------------------------------------------------"
	echo "\tDengan total harga = Rp. $total_harga,-"
	echo
	read -p "Lanjutkan memilih menu? (Y/N): " proses

	if [ "$proses" != "y" ]; then
		echo
		echo "\tTotal pembayaran: Rp. $total"
		echo
		echo "\tTerima Kasih Atas Kunjungan Anda!"
		echo "\t---------------------------------------------"
		echo "\tSemoga Anda Puas dengan Pelayanan Kami."
		echo
		exit 0
	fi
done
