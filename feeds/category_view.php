<?php
/**
 * category_view.php  
 * 
 * @package 
 * @author Vanver Brown 
 * @author Siri Love
 * @author Ethan
 * @author Willliam
 * @version 1.0 03/01/2018
 * @link 
 * @license http://www.apache.org/licenses/LICENSE-2.0
 * @see category_view.php
 * @see feed_view.php 
 * @todo 
 */

require '../inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials
spl_autoload_register('MyAutoLoader::NamespaceLoader');//required to load SurveySez namespace objects
$config->metaRobots = 'no index, no follow';#never index survey pages 
 
What does line #20 doing here ? Does to check the array for ['FeedID'] and ['FeedTitle'] ? 
	

# check variable of item passed in - if invalid data, forcibly redirect back to demo_list.php page
if(isset($_GET['id']) && (int)$_GET['id'] > 0){#proper data must be on querystring
	 $myID = (int)$_GET['id']; #Convert to integer, will equate to zero if fails
}else{
	myRedirect(VIRTUAL_PATH . "feeds/index.php");
}


# SQL statement
$sql = "SELECT * FROM `wn18_Feeds` WHERE `FeedCategoryID` = $myID;";

#END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>

<h3 align="center">News Feeds</h3>

<?php
#reference images for pager
$prev = '<img src="' . VIRTUAL_PATH . 'images/arrow_prev.gif" border="0" />';
$next = '<img src="' . VIRTUAL_PATH . 'images/arrow_next.gif" border="0" />';

# Create instance of new 'pager' class
$myPager = new Pager(10,'',$prev,$next,'');
$sql = $myPager->loadSQL($sql);  #load SQL, add offset

# connection comes first in mysql (improved) function
$result = mysql_query(IDB::conn(),$sql) or die(trigger_error(mysql_error(IDB::conn()), E_USER_ERROR));

#if there are records, process them
if(mysql_num_rows($result) > 0){
	if($myPager->showTotal()==1){$itemz = "feed";}else{$itemz = "feeds";}  //deal with plural
    echo '<div align="center">We have ' . $myPager->showTotal() . ' ' . $itemz . '!</div>';
	
	#start the table
	echo '
		<table class="table table-striped table-hover ">
			<thead>
				<tr>
					<th>Feed Name</th>
					<th>Feed Description</th>
				</tr>
			</thead>
			<tbody>
	';

	# process each row
	while($row = mysql_fetch_assoc($result)){
		
		echo '
			<tr>
				<td><a href="' . VIRTUAL_PATH . 'feeds/feed_view.php?id=' . (int)$row['FeedID'] . '">' . dbOut($row['FeedTitle']) . '</a></td>
				<td>' . dbOut($row['FeedDescription']) . '</td>
			</tr>
		';
	}
	
	# complete the table
	echo '</tbody></table>';
	
	echo $myPager->showNAV(); # show paging nav, only if enough records	 
}else{#no records
    echo "<div align=center>What! No feeds?  There must be a mistake!!</div>";	
} #end if(mysql_num_rows($result) > 0)

#release the data
@mysql_free_result($result);

get_footer(); #defaults to theme footer or footer_inc.php
?>
