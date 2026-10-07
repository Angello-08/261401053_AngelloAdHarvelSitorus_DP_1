// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program GajiKaryawan;

uses crt;

const
    JAM_STANDAR  = 40;       { jam kerja standar per minggu }
    TARIF_LEMBUR = 20000;    { upah lembur per jam }
    BATAS_BONUS  = 50;       { batas jam kerja untuk bonus Golongan C }
    NILAI_BONUS  = 100000;   { nominal bonus Golongan C }

var
    { Input dari pengguna }
    golongan: char;
    jam_kerja: integer;      { total jam kerja dalam seminggu }
    { Hasil perhitungan }
    gaji_pokok, lembur, bonus, total_gaji: longint;
    jam_lembur: integer;
    golongan_valid: boolean;

begin
    clrscr;
    writeln('==========PERHITUNGAN GAJI KARYAWAN=========='); writeln;
    writeln('Golongan : A = Rp1.500.000, B = Rp2.000.000, C = Rp2.500.000'); writeln;

    { 1. Input golongan, lalu ubah ke huruf besar }
    write('Masukkan Golongan (A/B/C)     : '); readln(golongan);
    golongan := upcase(golongan);

    { Anggap valid dulu; diubah ke false pada cabang else }
    golongan_valid := true;

    { 2. Tentukan gaji pokok berdasarkan golongan }
    case golongan of
        'A': gaji_pokok := 1500000;
        'B': gaji_pokok := 2000000;
        'C': gaji_pokok := 2500000;
    else
        { Golongan selain A, B, C dianggap tidak valid }
        golongan_valid := false;
    end;

    if not golongan_valid then
        writeln('Golongan tidak valid!')
    else
        begin
            { 3. Input total jam kerja dengan validasi: tidak boleh negatif }
            repeat
                write('Total Jam Kerja (jam/minggu)  : '); readln(jam_kerja);
                if jam_kerja < 0 then
                    writeln('Jam kerja tidak boleh negatif!');
            until jam_kerja >= 0;

            { 4. Hitung lembur: hanya jam yang melebihi 40 jam standar }
            if jam_kerja > JAM_STANDAR then
                jam_lembur := jam_kerja - JAM_STANDAR
            else
                jam_lembur := 0;

            lembur := jam_lembur * TARIF_LEMBUR;

            { 5. Hitung bonus: khusus Golongan C dan total jam kerja > 50 }
            if (golongan = 'C') and (jam_kerja > BATAS_BONUS) then
                bonus := NILAI_BONUS
            else
                bonus := 0;

            { 6. Hitung total gaji akhir }
            total_gaji := gaji_pokok + lembur + bonus;

            { 7. Tampilkan rincian }
            writeln;
            writeln('==============RINCIAN GAJI==============');
            writeln('Golongan        : ', golongan);
            writeln('Total Jam Kerja : ', jam_kerja, ' jam (lembur ', jam_lembur, ' jam)');
            writeln('----------------------------------------');
            writeln('Gaji Pokok      : Rp', gaji_pokok);
            writeln('Lembur          : Rp', lembur);
            writeln('Bonus           : Rp', bonus);
            writeln('----------------------------------------');
            writeln('Total Gaji Akhir: Rp', total_gaji);
            writeln('========================================');
        end;

    readln;
end.