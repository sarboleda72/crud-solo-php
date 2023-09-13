<?php session_start(); ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title> Modificar Usuario </title>
	<link rel="stylesheet" href="../public/css/bootstrap.min.css">
	<link rel="stylesheet" href="../public/css/fontawesome-all.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h1 class="text-center text-info"> <i class="fa fa-pencil-alt"></i> Modificar Usuario </h1>
				<hr>
				<ol class="breadcrumb">
				  <li><a href="../">Inicio</a></li>
				  <li class="active">Modificar Usuario</li>
				</ol>
                <?php
                    if (isset($_GET['id'])){
                        include '../config/connect.php';
                        $id=$_GET['id'];
                        $sql="SELECT * FROM USUARIOS WHERE documento='$id';";
                        $result=mysqli_query($conn,$sql);
                        if ($row=mysqli_fetch_array($result)){
                ?>
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="number" class="form-control" name="documento" placeholder="Documento de identidad" required readonly value="<?php echo $row['documento']; ?>">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="nombres" placeholder="Nombre completo" required readonly value="<?php echo $row['nombre']; ?>">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="correo" placeholder="Correo electrónico" required readonly value="<?php echo $row['correo']; ?>">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="telefono" placeholder="Celular" required readonly value="<?php echo $row['telefono']; ?>">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="ciudad" placeholder="Ciudad" required readonly value="<?php echo $row['ciudad']; ?>">
                    </div>
                    <div class="form-group">
                        <select name="genero" class="form-control" require>
                            <option>--seleccione el género--</option>
                            <option value="F" <?php if($row['genero']=="F") echo "selected"; ?>>Fmemino</option>
                            <option value="M" <?php if($row['genero']=="M") echo "selected"; ?>>Fmemino</option>
                            <option value="O" <?php if($row['genero']=="O") echo "selected"; ?>>Otro</option>
                        </select>
                    </div>
                </form>

                <?php
                        }
                    }
                ?>