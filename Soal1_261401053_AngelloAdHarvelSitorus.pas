// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program TotalBelanja;

uses crt;

var
    i, n: integer;
    harga_barang, harga_awal, harga_akhir, diskon: real;

begin
    clrscr;

    // Meminta pengguna memasukkan jumlah barang yang dibeli
    write('Banyak Barang yang Dibeli: '); 
    readln(n);

    // Mengatur total harga awal menjadi 0
    harga_awal := 0;

    // Menginput harga setiap barang dan menjumlahkannya ke total harga
    for i := 1 to n do
    begin
        write('Harga barang ke-', i, ' = Rp'); 
        readln(harga_barang);

        // Menambahkan harga barang ke total harga sebelum diskon
        harga_awal := harga_awal + harga_barang;
    end;

    // Menentukan besar diskon berdasarkan total harga
    if (harga_awal < 100000) then
    begin
        // Total kurang dari Rp100.000 mendapatkan diskon 0%
        diskon := 0;
    end
    else if ((harga_awal >= 100000) and (harga_awal < 500000)) then
    begin
        // Total Rp100.000 sampai kurang dari Rp500.000 mendapatkan diskon 10%
        diskon := 0.1;
    end
    else
    begin
        // Total Rp500.000 atau lebih mendapatkan diskon 20%
        diskon := 0.2;
    end;

    // Menghitung total yang harus dibayar setelah dikurangi diskon
    harga_akhir := harga_awal - (harga_awal * diskon);

    // Menampilkan rincian hasil belanja
    writeln;
    writeln('==========RINCIAN BELANJA==========');
    writeln('Total Harga sebelum Diskon = Rp', harga_awal:0:2);
    writeln('Besar Diskon Diperoleh = ', (diskon * 100):0:2, '%');
    writeln('Biaya Akhir yang Harus Dibayar = Rp', harga_akhir:0:2);
    writeln('====================================');

    // Menampilkan pesan setelah transaksi selesai
    writeln;
    writeln('Terima Kasih telah Berbelanja di Toko Kami  ^_^');
end.    
