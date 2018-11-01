<form method="post">
  Isi paket: <input type="text" name="isi" ><br>
  Sasaran:
  <select name="sasaran">
    <?php
      $con = mysqli_connect('localhost','root','','pra_assesment');
      $penghuni = mysqli_query($con,"SELECT * FROM penghuni");
      while ($row=mysqli_fetch_array($penghuni)) {
          echo "<option value='".$row['no_KTP']."'>".$row['no_KTP'].", ".$row['nama']."</option>";
      }

    ?>
  </select><br>
  <input type="submit" name="submit" ><br>

</form>

<?php
  if (isset($_POST['submit'])) {
    session_start();
    mysqli_query($con,"INSERT INTO paket (tanggal_datang, sasaran, penerima, isi_paket) VALUES ('".date('Y-m-d')."', '".$_POST['sasaran']."', '".$_SESSION['nip']."', '".$_POST['isi']."' ) ");
    header("Location:dashboard.php");
  }

?>
