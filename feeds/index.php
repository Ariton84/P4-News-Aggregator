<?php
/**
 * index.php 
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

# '../' works for a sub-folder.  use './' for the root  
require '../inc_0700/config_inc.php'; #provides configuration, pathing, error handling, db credentials 
 
# SQL statement
$sql = "SELECT FeedCategoryID, FeedCategoryName, FeedCategoryDescription FROM `wn18_FeedCategories`;";


#Fills <title> tag. If left empty will default to $PageTitle in config_inc.php  
$config->titleTag = 'ITC 250 WN18 News Feed Categories';


#Fills <meta> tags.  Currently we're adding to the existing meta tags in config_inc.php
$config->metaDescription = 'Seattle Central\'s ITC250 Class RSS readers are made with pure PHP! ' . $config->metaDescription;
$config->metaKeywords = 'RSS,PHP,Fun,Regular,Regular Expressions,'. $config->metaKeywords;

# END CONFIG AREA ---------------------------------------------------------- 

get_header(); #defaults to theme header or header_inc.php
?>

<h3 align="center">News Feed Categories</h3>



<?php
#reference images for pager
$prev = '<img src="' . VIRTUAL_PATH . 'images/arrow_prev.gif" border="0" />';
$next = '<img src="' . VIRTUAL_PATH . 'images/arrow_next.gif" border="0" />';

# Create instance of new 'pager' class
$myPager = new Pager(10,'',$prev,$next,'');
$sql = $myPager->loadSQL($sql);  #load SQL, add offset

# connection comes first in mysqli (improved) function
$result = mysqli_query(IDB::conn(),$sql) or die(trigger_error(mysqli_error(IDB::conn()), E_USER_ERROR));

# if we have records, process them
if(mysqli_num_rows($result) > 0){
	if($myPager->showTotal()==1){$itemz = "category";}else{$itemz = "categories";}  //deal with plural
    echo '<div align="center">We have ' . $myPager->showTotal() . ' ' . $itemz . '!</div>';
	
	# start the table
	echo '
		<table class="table table-striped table-hover ">
			<thead>
				<tr>
				  <th>Category Name</th>
				  <th>Category Description</th>
				</tr>
			</thead>
			<tbody>
	
	'; #end echo
	
	# process each row
	while($row = mysqli_fetch_assoc($result)){

		echo '
			<tr>
				<td><a href="' . VIRTUAL_PATH . 'feeds/category_view.php?id=' . (int)$row['FeedCategoryID'] . '">' . dbOut($row['FeedCategoryName']) . '</a></td>
				<td>' . dbOut($row['FeedCategoryDescription']) . '</td>
			</tr>
		';
		
	} #end while
	
	# complete the table
	echo '</tbody></table>';
	
	
	
	echo $myPager->showNAV(); # show paging nav, only if enough records	 
}else{#no records
    echo "<div align=center>What! No feeds?  There must be a mistake!!</div>";	
} #end if(mysqli_num_rows($result) > 0)

#release the data
@mysqli_free_result($result);

get_footer(); #defaults to theme footer or footer_inc.php
?>