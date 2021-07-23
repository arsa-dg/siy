class Account {
  String username;
  String password;
  String name;
  String nim;
  String ipk;
  String fakultas;
  String prodi;
  String doswal;

  Account({
    required this.username,
    required this.password,
    required this.name,
    required this.nim,
    required this.ipk,
    required this.fakultas,
    required this.prodi,
    required this.doswal
  });
}

var accounts = [
  Account(
    username: 'arsaaa',
    password: 'yakalibos',
    name: 'Arsa Daris Gintara',
    nim: '13519037',
    ipk: '4.50',
    fakultas: 'STEI',
    prodi: 'Teknik Informatika',
    doswal: 'Cia'
  ),
  Account(
    username: 'oranggg',
    password: 'yakalirang',
    name: 'Orang Orangan',
    nim: '13419037',
    ipk: '4.23',
    fakultas: 'FTMD',
    prodi: 'Teknik Kapal Mabur',
    doswal: 'Toni'
  ),
  Account(
    username: 'wong',
    password: 'wonggendeng',
    name: 'Wong Wongan Sawah',
    nim: '13319037',
    ipk: '1.70',
    fakultas: 'FTSL',
    prodi: 'Teknik Environment',
    doswal: 'Tono'
  ),
];