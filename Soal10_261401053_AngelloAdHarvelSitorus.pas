// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program NamaHari;

uses crt;

var
    { Nomor hari yang dimasukkan pengguna }
    nomor: integer;

begin
    clrscr;
    writeln('==========MENAMPILKAN NAMA HARI=========='); writeln;
    writeln('Masukkan angka 1-7 (1 = Senin, ..., 7 = Minggu)'); writeln;

    { 1. Input nomor hari }
    write('Input  : '); readln(nomor);

    { 2. Tentukan nama hari berdasarkan nomor yang dimasukkan }
    write('Output : ');
    case nomor of
        1: writeln('Hari Senin');
        2: writeln('Hari Selasa');
        3: writeln('Hari Rabu');
        4: writeln('Hari Kamis');
        5: writeln('Hari Jumat');
        6: writeln('Hari Sabtu');
        7: writeln('Hari Minggu');
    else
        { Angka di luar 1-7 bukan nomor hari yang valid }
        writeln('Nomor hari tidak valid! Masukkan angka 1 sampai 7.');
    end;

    readln;
end.