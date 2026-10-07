// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program JumlahHariDalamBulan;

uses crt;

var
    { Input dari pengguna }
    tahun, bulan: integer;
    { Hasil pengecekan dan perhitungan }
    kabisat: boolean;
    jumlah_hari: integer;

begin
    clrscr;
    writeln('==========JUMLAH HARI DALAM BULAN=========='); writeln;

    { 1. Input tahun dengan validasi: harus bilangan positif }
    repeat
        write('Masukkan Tahun               : '); readln(tahun);
        if tahun < 1 then
            writeln('Tahun harus lebih dari 0!');
    until tahun >= 1;

    { Input nomor bulan dengan validasi: harus berada di rentang 1-12 }
    repeat
        write('Masukkan Nomor Bulan (1-12)  : '); readln(bulan);
        if (bulan < 1) or (bulan > 12) then
            writeln('Nomor bulan harus antara 1 sampai 12!');
    until (bulan >= 1) and (bulan <= 12);

    { 2. Cek tahun kabisat memakai operator mod.
         Kabisat jika: habis dibagi 400
                       ATAU (habis dibagi 4 TETAPI tidak habis dibagi 100).
         Contoh: 2000 kabisat (kelipatan 400), 1900 bukan kabisat
         (kelipatan 100 tetapi bukan kelipatan 400), 2024 kabisat. }
    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
        kabisat := true
    else
        kabisat := false;

    { 3. Tentukan jumlah hari berdasarkan nomor bulan }
    case bulan of
        { Bulan dengan 31 hari }
        1, 3, 5, 7, 8, 10, 12: jumlah_hari := 31;

        { Bulan dengan 30 hari }
        4, 6, 9, 11: jumlah_hari := 30;

        { Februari: bergantung pada tahun kabisat }
        2: begin
               if kabisat then
                   jumlah_hari := 29
               else
                   jumlah_hari := 28;
           end;
    end;

    { 4. Tampilkan hasil }
    writeln;
    writeln('==================HASIL==================');
    writeln('Tahun        : ', tahun);
    if kabisat then
        writeln('Status Tahun : Tahun Kabisat')
    else
        writeln('Status Tahun : Bukan Tahun Kabisat');
    writeln('Bulan ke-', bulan, '  : ', jumlah_hari, ' hari');
    writeln('=========================================');

    readln;
end.