program tugas1;
uses crt,sysutils;
var
    nama,jalur,fakultas,prodi,nim,stambuk,kodefakultas,kodeprodi,kelas:string;
    nimint:integer;
    
begin clrscr;
    write('Masukkan Nama :');
    readln(nama);
    write('Masukkan Nim :');
    readln(nim);
    
    nimint:=strtoint(nim);
    fakultas:=nim[3]+nim[4];
    nimint:=strtoint(fakultas);
    
    case (nimint) of
    01:kodefakultas:=('Kedokteran');
    02:kodefakultas:=('Hukum');
    03:kodefakultas:=('Pertanian');
    04:kodefakultas:=('Teknik');
    05:kodefakultas:=('Ekonomi dan Bisnis');
    06:kodefakultas:=('Kedokteran Gigi');
    07:kodefakultas:=('Ilmu Budaya');
    08:kodefakultas:=('Matematika dan Ilmu Pengetahuan Alam');
    09:kodefakultas:=('Ilmu Sosial dan Politik');
    10:kodefakultas:=('Kesehatan Masyarakat');
    11:kodefakultas:=('Keperawatan');
    12:kodefakultas:=('Kehutanan');
    13:kodefakultas:=('Psikologi');
    14:kodefakultas:=('Ilmu Komputer dan Teknologi Informasi');
    15:kodefakultas:=('Farmasi');
    else kodefakultas:=('Fakultas anda tidak ditemukan');
    end;
    
    prodi:=nim[3]+nim[4]+nim[5]+nim[6];
    nimint:=strtoint(prodi);
    
    case (nimint) of
    0100:kodeprodi:=('Kedokteran');

    0200:kodeprodi:=('Ilmu Hukum');

    0301:kodeprodi:=('Agroteknologi');
    0302:kodeprodi:=('Manajemen Sumberdaya Perairan');
    0303:kodeprodi:=('Agribisnis');
    0305:kodeprodi:=('Teknologi Pangan');
    0306:kodeprodi:=('Peternakan');
    0308:kodeprodi:=('Teknik Pertanian dan Biosistem');
    0310:kodeprodi:=('Agroteknologi (PSDKU)');

    0401:kodeprodi:=('Teknik Mesin');
    0402:kodeprodi:=('Teknik Elektro');
    0403:kodeprodi:=('Teknik Industri');
    0404:kodeprodi:=('Teknik Sipil');
    0405:kodeprodi:=('Teknik Kimia');
    0406:kodeprodi:=('Arsitektur');
    0407:kodeprodi:=('Teknik Lingkungan');
    0431:kodeprodi:=('Pendidikan Profesi Insinyur');

    0501:kodeprodi:=('Ekonomi Pembangunan');
    0502:kodeprodi:=('Manajemen');
    0503:kodeprodi:=('Akuntansi');
    0504:kodeprodi:=('Kewirausahaan');

    0600:kodeprodi:=('Sarjana Kedokteran Gigi');
    0631:kodeprodi:=('Profesi Kedokteran Gigi');

    0701:kodeprodi:=('Sastra Indonesia');
    0702:kodeprodi:=('Sastra Melayu');
    0703:kodeprodi:=('Sastra Batak');
    0704:kodeprodi:=('Sastra Arab');
    0705:kodeprodi:=('Sastra Inggris');
    0706:kodeprodi:=('Ilmu Sejarah');
    0707:kodeprodi:=('Etnomusikologi');
    0708:kodeprodi:=('Sastra Jepang');
    0709:kodeprodi:=('Perpustakaan dan Sains Informasi');
    0710:kodeprodi:=('Bahasa Mandarin');

    0801:kodeprodi:=('Fisika');
    0802:kodeprodi:=('Kimia');
    0803:kodeprodi:=('Matematika');
    0805:kodeprodi:=('Biologi');

    0901:kodeprodi:=('Sosiologi');
    0902:kodeprodi:=('Ilmu Kesejahteraan Sosial');
    0903:kodeprodi:=('Ilmu Administrasi Publik');
    0904:kodeprodi:=('Ilmu Komunikasi');
    0905:kodeprodi:=('Antropologi Sosial');
    0906:kodeprodi:=('Ilmu Politik');
    0907:kodeprodi:=('Ilmu Administrasi Bisnis');

    1000:kodeprodi:=('Kesehatan Masyarakat');
    1001:kodeprodi:=('Gizi');

    1101:kodeprodi:=('Sarjana Keperawatan');
    1102:kodeprodi:=('Profesi Ners');

    1201:kodeprodi:=('Kehutanan');

    1301:kodeprodi:=('Psikologi');

    1401:kodeprodi:=('Ilmu Komputer');
    1402:kodeprodi:=('Teknologi Informasi');
    
    1501:kodeprodi:=('Farmasi');
    else kodeprodi:=('Prodi anda tidak ditemukan');
    end;
    
    stambuk:=nim[1]+nim[2];
    
    jalur:=nim[7]+nim[8]+nim[9];
    nimint:=strtoint(jalur);

    if (nimint <= 034) then
begin jalur:='SNBP';
    end
    else
    if(nimint <075) then
begin jalur:='SNBT';
    end
    else
    jalur:='Mandiri';

    kelas:=nim[7]+nim[8]+nim[9];
    nimint:=strtoint(kelas);

    if (nimint mod 3 = 1) then
begin kelas:='A';
    end
    else
    if (nimint mod 3 = 1) then 
begin kelas:='B';
    end
    else kelas:='C';

    nimint:=strtoint(nim);
    nimint:=strtoint(fakultas);
    if (nimint = 14) then
    begin
    writeln('------------------------------------');
    writeln('Nama :',nama);
    writeln('Nim :',nim);
    writeln('Stambuk :',stambuk);
    writeln('Fakultas :',kodefakultas);
    writeln('Prodi :',kodeprodi);
    writeln('Jalur :',Jalur);
    writeln('Kelas :',kelas);
    end 
    else begin
    writeln('------------------------------------');
    writeln('Nama :',nama);
    writeln('Nim :',nim);
    writeln('Stambuk :',stambuk);
    writeln('Fakultas :',kodefakultas);
    writeln('Prodi :',kodeprodi);
    end;
end.
    
