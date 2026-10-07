// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program TotalBelanja;

{ Mengimpor unit crt untuk memanipulasi layar seperti clrscr }
uses crt;

var
    n: integer;                      { Menyimpan opsi nomor menu yang dipilih user }
    operand1, operand2, hasil: real; { Menyimpan angka desimal dan hasil operasi 1 sampai 4 }
    
    { Variabel baru khusus integer karena operator DIV dan MOD wajib bertipe bulat }
    opInt1, opInt2, hasilDiv, hasilMod: integer; 
    
    is_continue: char; { Menyimpan input user ('Y'/'T') untuk konfirmasi perulangan }

begin
    { Mengulang seluruh blok program utama dari sini }
    repeat
        { Membersihkan layar konsol setiap kali menu atau program diulang }
        clrscr;

        { Menampilkan judul dan daftar menu kalkulator ke layar }
        writeln('==========KALKULATOR SEDERHANA=========='); writeln;
        writeln('1. Penjumlahan');  
        writeln('2. Pengurangan');  
        writeln('3. Perkalian');  
        writeln('4. Pembagian');  
        writeln('5. DIV & MOD');  
        writeln('6. <==Exit==>'); writeln;
        
        { Membaca input pilihan menu dari user dan disimpan ke variabel n }
        write('Pilih Opsi Nomor: '); readln(n);

        { Struktur percabangan berdasarkan nilai variabel n }
        case (n) of
            1 : 
                begin
                    clrscr;
                    writeln('==========PENJUMLAHAN==========');
                    write('Angka 1 = '); readln(operand1);
                    write('Angka 2 = '); readln(operand2);
                    
                    { Melakukan operasi penjumlahan }
                    hasil := operand1 + operand2;
                    
                    { Memformat angka desimal (0:lebar kolom minimum, 2:jumlah angka belakang koma) }
                    writeln(operand1:0:2, ' + ', operand2:0:2, ' = ', hasil:0:2);
                end;   
            2 : 
                begin
                    clrscr;
                    writeln('==========PENGURANGAN==========');
                    write('Angka 1 = '); readln(operand1);
                    write('Angka 2 = '); readln(operand2);
                    
                    { Melakukan operasi pengurangan }
                    hasil := operand1 - operand2;
                    
                    writeln(operand1:0:2, ' - ', operand2:0:2, ' = ', hasil:0:2);
                end;   
            3 : 
                begin
                    clrscr;
                    writeln('==========PERKALIAN==========');
                    write('Angka 1 = '); readln(operand1);
                    write('Angka 2 = '); readln(operand2);
                    
                    { Melakukan operasi perkalian }
                    hasil := operand1 * operand2;
                    
                    writeln(operand1:0:2, ' x ', operand2:0:2, ' = ', hasil:0:2);
                end;   
            4 : 
                begin
                    clrscr;
                    writeln('==========PEMBAGIAN==========');
                    write('Angka 1 = '); readln(operand1);
                    write('Angka 2 = '); readln(operand2);
                    
                    { Validasi agar program tidak crash akibat pembagian dengan nol }
                    if operand2 <> 0 then
                        begin
                            { Melakukan operasi pembagian real }
                            hasil := operand1 / operand2;
                            writeln(operand1:0:2, ' / ', operand2:0:2, ' = ', hasil:0:2);
                        end
                    else
                        { Menampilkan pesan error jika pembagi bernilai nol }
                        writeln('Error: Angka tidak bisa dibagi dengan 0!');
                end;   
            5 : 
                begin
                    clrscr;
                    writeln('==========DIV & MOD==========');
                    { Meminta input bilangan bulat khusus untuk operasi DIV & MOD }
                    write('Angka 1 (Harus Bulat) = '); readln(opInt1);
                    write('Angka 2 (Harus Bulat) = '); readln(opInt2);
                    
                    { Validasi mencegah pembagian nol pada operasi integer }
                    if opInt2 <> 0 then
                        begin
                            hasilDiv := opInt1 div opInt2; { Menghitung hasil bagi bilangan bulat }
                            hasilMod := opInt1 mod opInt2; { Menghitung sisa hasil bagi bulat }
                            
                            writeln(opInt1, ' DIV ', opInt2, ' = ', hasilDiv);
                            writeln(opInt1, ' MOD ', opInt2, ' = ', hasilMod);
                        end
                    else
                        writeln('Error: Pembagi tidak boleh 0!');
                end; 
            
            { Opsi 6: Memaksa program keluar dari blok perulangan repeat-until secara instan }
            6 : break;
        else
            begin
                { Dijalankan jika user memasukkan angka selain 1 sampai 6 }
                writeln;
                writeln('Pilihan tidak valid. Silakan coba lagi! ^_^');
            end;
        end;

        { Menanyakan kepada pengguna untuk melanjutkan program }
        writeln;
        write('Apakah Anda ingin menghitung lagi? (Y/T): '); 
        readln(is_continue);

    { Perulangan berhenti jika user mengetik 't' atau 'T' (Tidak) }
    until (is_continue = 't') or (is_continue = 'T'); 

    { Bagian penutup yang dijalankan saat perulangan selesai atau setelah memicu perintah break }
    clrscr;
    writeln('==========KALKULATOR SEDERHANA=========='); writeln;
    writeln('Terima kasih telah menggunakan kalkulator ini! ^_^');
    
    { Menahan layar penutup agar tidak langsung tertutup otomatis }
    readln;
end.
