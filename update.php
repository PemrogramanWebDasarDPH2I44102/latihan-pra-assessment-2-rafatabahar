<form method="post">
  Tanggal Ambil : <input type="date" name="ambil"><br>
  <input type="submit" name="submit"><br>
</form>


<?php
  $con = mysqli_connect('localhost','root','','pra_assesment');

  if (isset($_POST['submit'])) {

    mysqli_query($con,"UPDATE paket SET tanggal_ambil = '".$_POST['ambil']."' WHERE id_paket = '".$_GET['id']."' ");
  }


?>
