// Nama: Angello Ad Harvel Sitorus
// NIM: 261401053

program TarifParkir;

uses crt;

var
    { Input dari petugas parkir }
    kode: char;
    lama_parkir: integer;       { dalam jam }
    { Tarif yang ditentukan oleh jenis kendaraan }
    tarif_awal, tarif_lanjut, tarif_maks: longint;
    { Hasil perhitungan }
    total: longint;
    jenis: string;
    kode_valid: boolean;

begin
    clrscr;
    writeln('==========PERHITUNGAN TARIF PARKIR=========='); writeln;
    writeln('Kode Kendaraan : M = Mobil, K = Motor, B = Bus'); writeln;

    { 1. Input kode kendaraan, lalu ubah ke huruf besar }
    write('Masukkan Kode Kendaraan : '); readln(kode);
    kode := upcase(kode);

    { Anggap kode valid dulu; akan diubah ke false pada cabang else }
    kode_valid := true;

    { 2. Tentukan jenis dan tarif berdasarkan kode kendaraan }
    case kode of
        'M': begin
                 jenis        := 'Mobil';
                 tarif_awal   := 5000;    { tarif jam pertama }
                 tarif_lanjut := 3000;    { tambahan per jam berikutnya }
                 tarif_maks   := 30000;   { tarif flat jika > 10 jam }
             end;
        'K': begin
                 jenis        := 'Motor';
                 tarif_awal   := 2000;
                 tarif_lanjut := 1000;
                 tarif_maks   := 10000;
             end;
        'B': begin
                 jenis        := 'Bus';
                 tarif_awal   := 10000;
                 tarif_lanjut := 5000;
                 tarif_maks   := 50000;
             end;
    else
        { Kode selain M, K, B dianggap tidak valid }
        kode_valid := false;
    end;

    if not kode_valid then
        writeln('Kode kendaraan tidak valid!')
    else
        begin
            { 3. Input lama parkir dengan validasi: minimal 1 jam }
            repeat
                write('Lama Parkir (jam)       : '); readln(lama_parkir);
                if lama_parkir < 1 then
                    writeln('Lama parkir minimal 1 jam!');
            until lama_parkir >= 1;

            { 4. Hitung total tarif }
            if lama_parkir > 10 then
                { Lebih dari 10 jam: berlaku tarif maksimal flat }
                total := tarif_maks
            else
                { Jam pertama tarif awal, sisanya (lama - 1) jam
                  dikali tarif tambahan per jam }
                total := tarif_awal + (lama_parkir - 1) * tarif_lanjut;

            { 5. Tampilkan hasil }
            writeln;
            writeln('==============STRUK PARKIR==============');
            writeln('Jenis Kendaraan : ', jenis);
            writeln('Lama Parkir     : ', lama_parkir, ' jam');
            if lama_parkir > 10 then
                writeln('Keterangan      : Tarif maksimal flat');
            writeln('Total Bayar     : Rp', total);
            writeln('========================================');
        end;

    readln;
end.