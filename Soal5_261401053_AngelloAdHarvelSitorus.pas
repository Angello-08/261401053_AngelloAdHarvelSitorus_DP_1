// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program RekapNilaiMahasiswa;

uses crt;

var
    { Variabel perulangan dan input jumlah data }
    i, j, jumlah_mahasiswa, jumlah_tugas: integer;
    { Variabel penampung nilai }
    rata_rata, total_nilai, nilai_tugas: real;
    { Variabel penghitung kelulusan }
    jumlah_lulus, jumlah_tidak_lulus: integer;

begin
    clrscr;
    writeln('==========REKAPITULASI NILAI MAHASISWA========='); writeln;

    { 1. Meminta input jumlah mahasiswa (M) dan jumlah tugas (N) }
    write('Berapa Banyak Mahasiswa yang Ingin Didata : '); readln(jumlah_mahasiswa);
    write('Jumlah Tugas yang Dimiliki Setiap Mahasiswa : '); readln(jumlah_tugas);

    { Inisialisasi penghitung kelulusan sebelum perulangan dimulai }
    jumlah_lulus := 0;
    jumlah_tidak_lulus := 0;

    { 2. Perulangan LUAR: berjalan sebanyak jumlah mahasiswa (M) }
    for i := 1 to jumlah_mahasiswa do
        begin
            writeln;
            writeln('Mahasiswa ke-', i, ' : ');

            { Reset total nilai ke 0 setiap pindah ke mahasiswa baru,
              agar nilai mahasiswa sebelumnya tidak ikut terjumlah }
            total_nilai := 0;

            { Perulangan DALAM: berjalan sebanyak jumlah tugas (N)
              untuk menginput nilai tiap tugas mahasiswa ke-i }
            for j := 1 to jumlah_tugas do
                begin
                    write('Nilai Tugas ke-', j, ' = '); readln(nilai_tugas);
                    { Akumulasi: jumlahkan setiap nilai tugas ke total }
                    total_nilai := total_nilai + nilai_tugas;
                end;

            { 3. Hitung rata-rata = total nilai dibagi jumlah tugas }
            rata_rata := total_nilai / jumlah_tugas;

            { Tampilkan hasil per mahasiswa }
            clrscr;
            writeln('=====Mahasiswa ke-', i, '=====');
            writeln('Total Nilai Tugas = ', total_nilai:0:2);
            writeln('Rata-Rata Nilai   = ', rata_rata:0:2);

            { Tentukan status kelulusan: rata-rata >= 65 maka LULUS }
            if (rata_rata >= 65) then
                begin
                    writeln('STATUS KELULUSAN  : "LULUS".');
                    { Tambah penghitung mahasiswa yang lulus }
                    jumlah_lulus := jumlah_lulus + 1;
                end
            else
                begin
                    writeln('STATUS KELULUSAN  : "TIDAK LULUS".');
                    { Tambah penghitung mahasiswa yang tidak lulus }
                    jumlah_tidak_lulus := jumlah_tidak_lulus + 1;
                end;

            { Tunggu tekan Enter sebelum lanjut ke mahasiswa berikutnya }
            writeln;
            write('Tekan Enter untuk melanjutkan...');
            readln;
            clrscr;
        end;

    { 4. Tampilkan rekapitulasi akhir setelah semua mahasiswa diproses }
    writeln('=========REKAPITULASI AKHIR=========');
    writeln('Total Mahasiswa    : ', jumlah_mahasiswa);
    writeln('Mahasiswa LULUS    : ', jumlah_lulus);
    writeln('Mahasiswa TIDAK LULUS : ', jumlah_tidak_lulus);
    writeln('====================================');
    readln;
end.