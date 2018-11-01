<?php
  session_start();
  echo "Selamat datang ".$_SESSION['nama']." (".$_SESSION['nip'].")";

  $con = mysqli_connect('localhost','root','','pra_assesment');
  $paket = mysqli_query($con,"SELECT * FROM paket");
?>
<br>
<a href="inputPaket.php">Input paket Baru</a><br>
<a href="inputPenghuni.php">Input Penghuni Baru</a>
<table border="1">
  <tr>
    <th>No</th>
    <th>Tanggal Datang</th>
    <th>Sasaran</th>
    <th>Penerima</th>
    <th>Isi Peket</th>
    <th>Tanggal Ambil</th>
    <th>Aksi</th>
    <th>Status</th>
  </tr>

  <?php
    $i=1;
    while ($data=mysqli_fetch_array($paket)) {
      echo "<tr><td>".$i++."</td>";
      echo "<td>".$data['tanggal_datang']."</td>";
      echo "<td>".$data['sasaran']."</td>";
      echo "<td>".$data['penerima']."</td>";
      echo "<td>".$data['isi_paket']."</td>";
      echo "<td>".$data['tanggal_ambil']."</td>";
      echo "<td><a href='update.php?id=".$data['id_paket']."'>UPDATE</a></td>";
      $status = "Belum Diambil";
      if ($data['tanggal_ambil']!="0000-00-00") {
        $status = "Sudah diambil";
      }
      echo "<td>$status</td></tr>";
    }

  ?>

</table>

<a href="index.php">LOG OUT</a>
