<?php
class Controller_pembayaran{
  var $db;
  var $con;
  var $query;
  var $data;
  var $result;

  function __construct()
  {
    include '../Models/Model_pembayaran.php';
    $this->MPembayaran = new Model_pembayaran();
  }

  function POSTData ($id_petugas, $nisn, $tanggal_bayar, $bulan_bayar, $tahun_bayar, $id_spp, $jumlah_bayar){
    $this->MPembayaran->POST($id_petugas, $nisn, $tanggal_bayar, $bulan_bayar, $tahun_bayar, $id_spp, $jumlah_bayar);
  }
}