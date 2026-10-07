// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program DeretBilanganGanjilGenap;

uses crt;

var
    kategori_deret,n,i: integer;

begin
    clrscr;

    // Menampilkan pilihan kategori deret
    writeln('Pilihan Kategori Deret:');
    writeln('1 : Ganjil');
    writeln('2 : Genap');
    writeln;

    // Meminta pengguna memilih kategori deret
    write('Pilih Kategori (1 / 2) : '); readln(kategori_deret);

    // Meminta pengguna memasukkan batas akhir deret
    write('Masukkan nilai N : '); readln(n);

    writeln;

    // Mengecek kategori deret yang dipilih
    case (kategori_deret) of
        1 : write('Deret : Ganjil');
        2 : write('Deret : Genap');
    else
        begin
            writeln(kategori_deret, ' : Tidak Termasuk Opsi.');
            writeln;
        end;
    end;

    writeln;
    writeln;

    // Memulai perulangan dari angka 1
    i := 1;

    // Melakukan perulangan selama i masih kurang atau sama dengan N
    while (i <= n) do
    begin
        // Jika memilih ganjil dan i merupakan bilangan genap,
        // maka angka tersebut dilewati
        if (kategori_deret = 1) and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue;
        end;

        // Jika memilih genap dan i merupakan bilangan ganjil,
        // maka angka tersebut dilewati
        if (kategori_deret = 2) and (i mod 2 <> 0) then
        begin
            i := i + 1;
            continue;
        end;

        // Jika i merupakan kelipatan 5,
        // maka angka tersebut dilewati
        if (i mod 5 = 0) then
        begin
            i := i + 1;
            continue;
        end;

        // Menampilkan angka yang memenuhi semua kondisi
        write(i, ' ');

        // Berpindah ke angka berikutnya
        i := i + 1;
    end;

    readln;
end.