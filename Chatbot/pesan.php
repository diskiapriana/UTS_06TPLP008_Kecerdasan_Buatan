<?php

// buat terlebih dahulu database dengan nama chatbot yang mempunyai sebuah tabel bernama chat dengan 3 field yaitu id (primary key), pertanyaan, dan jawaban. 
// isi sesuai pertanyaan dan jawaban yang di inginkan dari bot.

// koneksi ke database
$con = mysqli_connect("localhost", "root", "", "chatbot");

// ambil data pesan dari index.html
$pesan = mysqli_real_escape_string($con, $_POST['pesan']);

// ambil data dari database
$cek_data = mysqli_query($con, "SELECT jawaban FROM chat WHERE pertanyaan LIKE '%$pesan%' ");

// eksekusi apabila berhasil mengambil data dari database
if(mysqli_num_rows($cek_data) > 0){
  $data = mysqli_fetch_assoc($cek_data);

  // kirim jawaban / balasan 
  $balasan = $data['jawaban'];
  echo $balasan;
}
else{
  // jika pertanyaan tidak /belum ada di dalam database
  echo "maaf pertanyaan anda belum saya mengerti, :(";
}



?>
