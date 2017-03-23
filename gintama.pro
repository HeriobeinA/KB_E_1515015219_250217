DOMAINS 
nama = symbol
umur = byte
name = symbol

PREDICATES

nondeterm kenaikan_pangkat(nama)
nondeterm pegawai(nama, umur)
absen(nama)
nondeterm direktur(name,name)
jabatan

CLAUSES 
kenaikan_pangkat(Nama):-pegawai(Nama, Umur),
Umur<25,
not(absen(Nama)).

pegawai("kondo",27).
pegawai("hijikata",23).
pegawai("okita",21).

absen("hijikata").

direktur(gintoki, warung).

jabatan:-direktur(A,B),

write(A ," adalah menejer ",B ,"\n"),
fail.
jabatan.

GOAL
kenaikan_pangkat(Karyawan_yang_diangkat),
jabatan.
