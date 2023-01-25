<?php
class Limiter {

	private static $SEDE_DELIMITER = [510, 530, 530]; // 580, 480, 500
	private static $SUCC_DELIMITER = [790, 770, 770]; // 750, 850, 820

	public static $SEDE = 0;
	public static $SUCC = 1;

	public static function DayLimitCheck($connection, $sede, $coso, $giorno)
	{
		$ret = mysqli_query($connection, "select * from utenti where giorni LIKE '".$coso."%';");
		return mysqli_num_rows($ret) < ($sede === self::$SEDE ? self::$SEDE_DELIMITER[$giorno] : self::$SUCC_DELIMITER[$giorno]) ? true : false;
	}
}
?>
