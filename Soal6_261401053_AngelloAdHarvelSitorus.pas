// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program NilaiAkhirMatkul;

uses crt;

var
    { Variabel input nilai dan kehadiran (dalam skala 0-100) }
    nilai_tugas, nilai_uts, nilai_uas, kehadiran: real;
    { Variabel hasil perhitungan }
    nilai_akhir: real;
    { Variabel penampung hasil keputusan }
    indeks: char;
    status: string;

begin
    clrscr;
    writeln('==========PENENTUAN NILAI AKHIR MATA KULIAH=========='); writeln;

    { 1. Input nilai dengan validasi: ulangi sampai nilai berada di rentang 0-100 }
    repeat
        write('Nilai Tugas (0-100)  : '); readln(nilai_tugas);
    until (nilai_tugas >= 0) and (nilai_tugas <= 100);

    repeat
        write('Nilai UTS   (0-100)  : '); readln(nilai_uts);
    until (nilai_uts >= 0) and (nilai_uts <= 100);

    repeat
        write('Nilai UAS   (0-100)  : '); readln(nilai_uas);
    until (nilai_uas >= 0) and (nilai_uas <= 100);

    repeat
        write('Kehadiran   (0-100%) : '); readln(kehadiran);
    until (kehadiran >= 0) and (kehadiran <= 100);

    { 2. Hitung nilai akhir dengan bobot: Tugas 30%, UTS 30%, UAS 40% }
    nilai_akhir := (0.3 * nilai_tugas) + (0.3 * nilai_uts) + (0.4 * nilai_uas);

    { 3. Tentukan status kelulusan:
         LULUS hanya jika kedua syarat terpenuhi (operator AND) }
    if (nilai_akhir >= 60) and (kehadiran >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    { 4. Tentukan indeks huruf.
         Pengecekan dari nilai tertinggi ke terendah, sehingga setiap
         kondisi cukup memeriksa batas bawahnya saja. Cara ini juga
         menangani nilai desimal seperti 84.5 yang tidak tercakup
         jika rentang ditulis "75-84". }
    if nilai_akhir >= 85 then
        indeks := 'A'
    else if nilai_akhir >= 75 then
        indeks := 'B'
    else if nilai_akhir >= 60 then
        indeks := 'C'
    else if nilai_akhir >= 50 then
        indeks := 'D'
    else
        indeks := 'E';

    { 5. Tampilkan hasil }
    writeln;
    writeln('==================HASIL AKHIR=================');
    writeln('Nilai Akhir    : ', nilai_akhir:0:2);
    writeln('Kehadiran      : ', kehadiran:0:2, '%');
    writeln('Indeks Huruf   : ', indeks);
    writeln('Status         : ', status);

    { Beri keterangan jika tidak lulus agar penyebabnya jelas }
    if status = 'TIDAK LULUS' then
        begin
            if nilai_akhir < 60 then
                writeln('Keterangan     : Nilai akhir kurang dari 60.');
            if kehadiran < 80 then
                writeln('Keterangan     : Kehadiran kurang dari 80%.');
        end;

    writeln('==============================================');
    readln;
end.