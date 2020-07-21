<?php
define('OBJ_PAGE','SITE_LIST');
// Init variables
$user=getInfo('username');
$isAdmin=getInfo('isadmin');
if($isAdmin==1){
	$strWhere="";
	$get_s = isset($_GET['s']) ? antiData($_GET['s']) : '';
	$get_q = isset($_GET['q']) ? antiData($_GET['q']) : '';
	$get_par = isset($_GET['par']) ? antiData($_GET['par']) : '';

	$total_rows=SysCount('tbl_sites',$strWhere);
	?>
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">Danh sách trang</h1>
				</div><!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="<?php echo ROOTHOST;?>">Bảng điều khiển</a></li>
						<li class="breadcrumb-item active">Danh sách trang</li>
					</ol>
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->
	<!-- Main content -->
	<section class="content">
		<div class='container-fluid'>
			<div class="widget-frm-search">
				<form id='frm_search' method='get' action=''>
					<input type='hidden' id='txt_status' name='s' value='' />
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<input type='text' id='txt_title' name='q' value="<?php echo $get_q;?>" class='form-control' placeholder="Tên trang ..." />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<select class="form-control" name="par" id="cbo_par">
									<option value="">-- Chọn trang cha --</option>
									<?php getListComboboxSites(0,0); ?>
								</select>
								<script type="text/javascript">
									$(document).ready(function(){
										cbo_Selected('cbo_par', <?php echo $get_par; ?>);
									});
								</script>
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<select class="form-control" name="s" id="cbo_status">
									<option value="">-- Status --</option>
									<option value="1">Chưa kích hoạt</option>
									<option value="2">Đã kích hoạt</option>
									<option value="3">Hết hạn</option>
									<option value="4">Bị gỡ xuống</option>
								</select>
								<script type="text/javascript">
									$(document).ready(function(){
										cbo_Selected('cbo_status', <?php echo $get_s;?>);
									});
								</script>
							</div>
						</div>
						<div class="col-sm-1"><input type="submit" name="" class="btn btn-primary" value="Tìm kiếm"></div>
						<div class="col-sm-2">
							<a href="<?php echo ROOTHOST.COMS;?>/add" class="btn btn-primary float-sm-right">Thêm mới</a>
						</div>
					</div>
				</form>
			</div>
			<div class="card">
				<div class='table-responsive'>
					<table class="table">
						<thead>                  
							<tr>
								<th style="width: 10px">Trash</th>
								<th>Tên trang</th>
								<th>Trang cha</th>
								<th>Tên miền</th>
								<th>Phone</th>
								<th>Email</th>
								<th width="150px">Status</th>
								<th width="80px">Chi tiết</th>
							</tr>
						</thead>
						<tbody>
							<?php
							if($total_rows>0){
								$__array = array();
								$strWhere.=" AND par_id=0 ORDER BY cdate DESC";
								$obj = SysGetList('tbl_sites',array(), $strWhere, true);
								$num = count($obj);

								for ($i=0; $i < $num; $i++) { 
									$res_childs = SysGetList('tbl_sites', array(), "AND path LIKE '".$obj[$i]['id']."_%' ORDER BY path ASC", true);
									$obj[$i]['childs'] = $res_childs;
								}
								$__array = $obj;

								foreach ($__array as $key => $r) {
									if($r['status']==1){
										$ic_status='<button class="btn btn-default bd-0 font-12">Chưa kích hoạt</button>';
									}else if($r['status']==2){
										$ic_status='<button class="btn btn-success bd-0 font-12">Đã kích hoạt</button>';
									}else if($r['status']==3){
										$ic_status='<button class="btn btn-disable cred bd-0 font-12">Hết hạn</button>';
									}

									$par_name = SysGetList('tbl_sites', array('title'), "AND id=".$r['par_id']);
									$par_name = isset($par_name[0]['title']) ? $par_name[0]['title'] : '';
									?>
									<tr>
										<td align="center"><a href="<?php echo ROOTHOST.COMS.'/trash/'.$r['id'];?>" onclick="return confirm('Bạn có chắc muốn xóa?')"><i class="fa fa-trash cred"></i></a></td>
										<td><?php echo $r['title'];?></td>
										<td><?php echo $par_name;?></td>
										<td><?php echo $r['domain'];?></td>
										<td><?php echo $r['phone'];?></td>
										<td><?php echo $r['email'];?></td>
										<td><?php echo $ic_status;?></td>
										<td align="center"><a href="<?php echo ROOTHOST.COMS.'/view/'.$r['id'];?>"><i class="fas fa-edit cblue"></i></a></td>
									</tr>
									<?php
									if(count($r['childs'])>0){
										foreach ($r['childs'] as $k => $v) {
											if($v['status']==1){
												$ic_status2='<button class="btn btn-default bd-0 font-12">Chưa kích hoạt</button>';
											}else if($v['status']==2){
												$ic_status2='<button class="btn btn-success bd-0 font-12">Đã kích hoạt</button>';
											}else if($v['status']==3){
												$ic_status2='<button class="btn btn-disable cred bd-0 font-12">Hết hạn</button>';
											}

											$par_name2 = SysGetList('tbl_sites', array('title'), "AND id=".$v['par_id']);
											$par_name2 = isset($par_name2[0]['title']) ? $par_name2[0]['title'] : '';

											$char="";
											$level = explode('_', $v['path']);
											$n_level = count($level);
											if($n_level > 0){
												for($i = 1; $i < $n_level; $i++) {
													$char.="|----- ";
												}
											}
											?>
											<tr>
												<td align="center"><a href="<?php echo ROOTHOST.COMS.'/trash/'.$v['id'];?>" onclick="return confirm('Bạn có chắc muốn xóa?')"><i class="fa fa-trash cred"></i></a></td>
												<td><?php echo $char.$v['title'];?></td>
												<td><?php echo $par_name2;?></td>
												<td><?php echo $v['domain'];?></td>
												<td><?php echo $v['phone'];?></td>
												<td><?php echo $v['email'];?></td>
												<td><?php echo $ic_status2;?></td>
												<td align="center"><a href="<?php echo ROOTHOST.COMS.'/view/'.$v['id'];?>"><i class="fas fa-edit cblue"></i></a></td>
											</tr>
											<?php
										}
									}
								}
							}else{
								?>
								<tr>
									<td colspan='6' class='text-center'>Dữ liệu trống!</td>
								</tr>
							<?php }?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
<?php }else{
	echo "<h3 class='text-center'>You haven't permission</h3>";
}
?>