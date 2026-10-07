// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program VerifikasiLogin;

uses crt;

var
    // Menyimpan jumlah percobaan login yang masih tersedia
    sisa_percobaan: integer;
    
    // Menyimpan username, password yang benar, serta input dari pengguna
    USERNAME,PASSWORD,inputUsername,inputPassword: string;

begin
    // Membersihkan layar sebelum program dimulai
    clrscr;

    // Menentukan username dan password yang benar
    USERNAME := 'angello2026@mail.com';
    PASSWORD := 'eF1B4C4ae';
    
    // Menentukan jumlah maksimal percobaan login
    sisa_percobaan := 3;

    // Menampilkan judul sistem login
    writeln('==========SISTEM LOGIN=========='); writeln;

    // Mengulang proses login selama percobaan masih tersedia
    repeat
        // Meminta pengguna memasukkan username dan password
        write('Username Anda: '); readln(inputUsername);
        write('Password Anda: '); readln(inputPassword);

        // Memeriksa apakah username dan password sesuai dengan data yang benar
        if ((inputUsername = USERNAME) and (inputPassword = PASSWORD)) then
            begin
                // Membersihkan layar dan menampilkan pesan login berhasil
                clrscr;
                writeln('==========SISTEM LOGIN=========='); writeln;
                writeln('Username Anda: ', inputUsername);
                writeln('Password Anda: ', inputPassword); writeln;
                writeln('Login Berhasil! Selamat Datang ^_^');
                
                // Menunggu pengguna menekan Enter
                readln;
                
                // Menghentikan perulangan karena login berhasil
                break;
            end
        else
            begin
                // Membersihkan layar dan mengurangi jumlah percobaan
                clrscr;
                writeln('==========SISTEM LOGIN=========='); writeln;
                sisa_percobaan := sisa_percobaan - 1;
                
                // Menampilkan pesan kesalahan dan sisa percobaan
                writeln('Username atau Password salah. Coba Lagi! (Sisa Percobaan: ', sisa_percobaan, ')');
            end;
        
        // Memeriksa apakah seluruh percobaan login telah habis
        if (sisa_percobaan = 0) then
            begin
                // Membersihkan layar dan menampilkan pesan akun terkunci
                clrscr;
                writeln('==========SISTEM LOGIN=========='); writeln;
                writeln('Akses Ditolak! Akun Terkunci.');
            end;
        
        // Menunggu pengguna menekan Enter sebelum melanjutkan
        readln;

    // Perulangan berhenti ketika jumlah percobaan mencapai 0
    until (sisa_percobaan = 0);
end.