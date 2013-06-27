<?php

class Database
{
    var $Host = "localhost"; 
    var $Database = "tramites";
    var $User     = "root";
    var $Password = "12345";
	
	var $R = array();
    var $Row;
    var $Errno    = 0;
    var $Error    = "";
    var $Link_ID  = 0;
    var $Query_ID = 0;

    function Database($query = "")
    {
        $this->query($query);
    }

    function connect($Database = "", $Host = "", $User = "", $Password = "")
    {
        if ("" == $Database)
            $Database = $this->Database;
        if ("" == $Host)
            $Host     = $this->Host;
        if ("" == $User)
            $User     = $this->User;
        if ("" == $Password)
            $Password = $this->Password;
        if ( 0 == $this->Link_ID )
        {
            $this->Link_ID=mysql_connect($Host, $User, $Password);
            if (!$this->Link_ID)
            {
                $this->halt("Database connect($Host, $User, \$Password) failed.");
                return 0;
            }
            if (!mysql_select_db($Database,$this->Link_ID))
            {
                $this->halt("Cannot use database ".$this->Database);
                return 0;
            }
        }
        return $this->Link_ID;
    }

    function free()
    {
        @mysql_free_result($this->Query_ID);
        $this->Query_ID = 0;
    }

    function query($Query_String)
    {
        if ($Query_String == "")
            return 0;
        if (!$this->connect())
        {
            return 0;
        };
        if ($this->Query_ID)
        {
                   
                   for($f=0;$f<@mysql_num_fields($this->Query_ID);$f++)
                        {
                                eval("unset(\$this->".mysql_field_name($this->Query_ID,$f).");");
                        }
            $this->free();
        }
        $this->Query_ID = mysql_query($Query_String,$this->Link_ID);
                $this->Row = 0;
        $this->Errno = mysql_errno();
        $this->Error = mysql_error();
        if (!$this->Query_ID)
        {
            $this->halt("Invalid SQL: ".$Query_String);
        }
        return $this->Query_ID;
    }
    /*function query_last_id()
    {
         $res = mysql_query("select last_insert_id();",$this->Link_ID);
	 while( $row = mysql_fetch_array( $res ) ) {  $id = $row[0]; }
	 return $id;
    }*/
    function query_last_id()
    {
         $this->Query_ID = mysql_query("select last_insert_id() id;",$this->Link_ID);
	 $this->R = mysql_fetch_array($this->Query_ID);
	 $id = $this->R[0];
	 return $id;
    }
        
    function next_row()
    {
                if (!$this->Query_ID)
        {
            $this->halt("next_record called with no query pending.");
            return 0;
        }
        $this->R = mysql_fetch_array($this->Query_ID);
                if(is_array($this->R))
                        for($f=0;$f<mysql_num_fields($this->Query_ID);$f++)
                                eval("\$this->".mysql_field_name($this->Query_ID,$f)."=stripslashes(\"".addslashes($this->R[$f])."\");");
                else
                        for($f=0;$f<mysql_num_fields($this->Query_ID);$f++)
                                eval("unset(\$this->".mysql_field_name($this->Query_ID,$f).");");
        $this->Row   += 1;
        $this->Errno  = mysql_errno();
        $this->Error  = mysql_error();
        return is_array($this->R);
    }
    
    function import_row($arr)
    {
        if (!$this->Query_ID)
        {
            $this->halt("import_record called with no query pending.");
            return 0;
        }
        $this->R = mysql_fetch_array($this->Query_ID);
                if(is_array($this->R))
                        for($f=0;$f<mysql_num_fields($this->Query_ID);$f++)
                if(isset($arr[mysql_field_name($this->Query_ID,$f)."_img"]))
                {
                    if($arr[mysql_field_name($this->Query_ID,$f)."_del"])
                        eval("\$this->".mysql_field_name($this->Query_ID,$f)."=\"\";");
                    elseif($arr[mysql_field_name($this->Query_ID,$f)]&&$arr[mysql_field_name($this->Query_ID,$f)]!="none")
                    {
                        $tmpname=tempnam("grafika/","tmp");
                        copy($arr[mysql_field_name($this->Query_ID,$f)],$tmpname);
                        eval("\$this->".mysql_field_name($this->Query_ID,$f)."=\$tmpname;");
                    }
                    else
                        eval("\$this->".mysql_field_name($this->Query_ID,$f)."=\$arr[\"".mysql_field_name($this->Query_ID,$f)."_img\"];");
                }
                else
                {
                    eval("\$this->".mysql_field_name($this->Query_ID,$f)."=stripslashes(\$arr[\"".mysql_field_name($this->Query_ID,$f)."\"]);");
                }
            
                else
                        for($f=0;$f<mysql_num_fields($this->Query_ID);$f++)
                                eval("unset(\$this->".mysql_field_name($this->Query_ID,$f).");");
        $this->Row   += 1;
        $this->Errno  = mysql_errno();
        $this->Error  = mysql_error();
        return is_array($this->R);
    }

    function seek($pos = 0)
    {
        $status = mysql_data_seek($this->Query_ID, $pos);
        if ($status)
            $this->Row = $pos;
        else
        {
            $this->halt("seek($pos) failed: result has ".$this->num_rows()." rows");
            mysql_data_seek($this->Query_ID, $this->num_rows());
            $this->Row = $this->num_rows;
            return 0;
        }
        return 1;
    }

    function affected_rows()
    {
        return mysql_affected_rows($this->Link_ID);
    }

    function num_rows()
    {
        return mysql_num_rows($this->Query_ID);
    }

    function num_fields()
    { //devuelve el número de campos de un resultado
        return mysql_num_fields($this->Query_ID);
    }

    function insert_id()
    {
        return mysql_insert_id($this->Link_ID);
    }
    function get_field($Name)
    {
        return $this->R[$Name];
    }

    function halt($msg)
    {
        $this->Error = @mysql_error($this->Link_ID);
        $this->Errno = @mysql_errno($this->Link_ID);
                /*
        printf("<b>Database error:</b> %s<br>\n", $msg);
        printf("<b>MySQL Error</b>: %s (%s)<br>\n",$this->Errno,$this->Error);
                */
    }
        
        function close()
        {
                $this->free();
                mysql_close($this->Link_ID);
        }

}
// developed by KrzysioK (C)
?>
