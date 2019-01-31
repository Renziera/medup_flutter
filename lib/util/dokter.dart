class Dokter {
  String id;
  String kode;
  String nama;
  String gelarDepan;
  String gelarBelakang;
  String spesialisasi;
  String sumber;
  String foto;
  String tempatLahir;
  String tanggalLahir;
  String deskripsi;
  String subSpesialis;
  String pengalaman;
  bool jenisKelamin; //true untuk perempuan

  List<JadwalDokter> jadwal;
  List<Penghargaan> penghargaan;
  List<Organisasi> organisasi;
  List<Pendidikan> pendidikan;
  List<Verifikasi> verifikasi;
  List<String> layanan;
  List<Pelatihan> pelatihan;

  Dokter({
    this.id,
    this.kode,
    this.nama,
    this.gelarDepan,
    this.gelarBelakang,
    this.spesialisasi,
    this.sumber,
    this.foto,
    this.tempatLahir,
    this.tanggalLahir,
    this.deskripsi,
    this.subSpesialis,
    this.pengalaman,
    this.jenisKelamin,
    this.jadwal,
    this.penghargaan,
    this.organisasi,
    this.pendidikan,
    this.verifikasi,
    this.layanan,
    this.pelatihan,
  });

  factory Dokter.fromJson(Map<String, dynamic> json) {
    return Dokter(
      id: json['_id'][r'$oid'],
      nama: json['nama'],
      gelarDepan: json['gelar_depan'],
      gelarBelakang: json['gelar_blk'],
      spesialisasi: json['spesialis'],
      sumber: json['sumber'],
      foto: json['foto'],
      tempatLahir: json['tempat_lahir'],
      tanggalLahir: json['tgl_lahir'],
      deskripsi: json['deskripsi'],
      subSpesialis: json['sub_spesialis'],
      pengalaman: json['pengalaman'],
      kode: json['kode'],
      jenisKelamin: json['jenis_kelamin'] == 'perempuan',
    );
  }
}

class JadwalDokter {}

class Penghargaan {}

class Organisasi {}

class Pendidikan {}

class Verifikasi {}

class Pelatihan {}
