<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<title><?php if(($si['link'] == '/') OR ($si['link'] == '')): else: echo ($si['title']); ?>-<?php endif; echo ($s["sys_name"]); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="<?php echo ($si['remark']?$si['remark']:$s['sys_describe']); echo ($so["title"]); ?>">
	<meta name="KeyWords" content="<?php echo ($si['keyword']?$si['keyword']:$s['sys_keyword']); echo ($so["title"]); ?>">
    <meta name="generator" content="Dswjcms! X1.0" />
    <meta name="author" content="Dswjcms! Team and Tf Team" />
    <meta name="copyright" content="2013-2014 Tf Inc." />
    <meta property="qc:admins" content="6461155451641617526375" />
    <meta http-equiv="X-UA-Compatible" content="IE=9">
<!--[if lt IE 9 ] >
<META http-equiv="X-UA-Compatible" content="IE=8" > </META>
<![endif]-->
     <link href="__PUBLIC__/css/bootstrap.min.css" rel="stylesheet">
    <link href='__PUBLIC__/bootstrap/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='__PUBLIC__/bootstrap/css/uploadify.css' rel='stylesheet'>
    <link href='__PUBLIC__/bootstrap/css/jquery-ui-1.8.21.custom.css' rel='stylesheet'>
    <link href='__PUBLIC__/bootstrap/css/uniform.default.css' rel='stylesheet'>
    <link href="__PUBLIC__/css/hdocs.css" rel="stylesheet">
    <link href='__PUBLIC__/bootstrap/css/opa-icons.css' rel='stylesheet'>
    <link href='__PUBLIC__/css/fotorama.css' rel='stylesheet'>
    <link  href="__PUBLIC__/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href='__PUBLIC__/jmhz/css/hdocs.css' rel='stylesheet'>
    <link href='__PUBLIC__/jmhz/css/css.css' rel='stylesheet'>
    <link href='__PUBLIC__/bootstrap/css/colorbox.css' rel='stylesheet'>
    <link type="text/css" rel="stylesheet" href="__PUBLIC__/css/jquery.datetimepicker.css">
    <!--[if lte IE 6]>
    <link href="__PUBLIC__/bootstrap/css/bootstrap-ie6.min.css" rel="stylesheet" type="text/css">
    <link href="__PUBLIC__/bootstrap/css/ie.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="__PUBLIC__/bootstrap/js/bootstrap-ie.js"></script>
    <![endif]-->
    <?php echo ($head); ?>
	<link rel="shortcut icon" href="__PUBLIC__/bootstrap/img/favicon.ico">
    <!-- jQuery -->
    <script src="__PUBLIC__/js/timecount.js"></script>
    <script src="__PUBLIC__/bootstrap/js/jquery-1.7.2.min.js"></script>
    
</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar">
 <!--start: Header -->
<header>

    <!--start: Container -->
    <div class="container">

        <div role="banner" class="visible-desktop row-fluid">
            <div class="span6">
                <a href="/">
                    <img src="__PUBLIC__/uploadify/uploads/logo/<?php echo ($s["sys_logo"]); ?>" style="height: 80px;margin-top: 10px;" alt="<?php echo ($s["sys_briefTitle"]); ?>"></a>
            </div>

            <div class="info span6">
            <?php if($_SESSION['user_name']== ''): ?><a href="__ROOT__/Logo/login.html">登陆</a>
                |
                <a href="__ROOT__/Logo/register.html">注册</a>
            <?php else: ?>
            	<?php echo (session('user_name')); ?>
                |
                <a href="__ROOT__/Center/mails.html">消息</a>
                |
                <a href="__ROOT__/Logo/exits.html">退出</a><?php endif; ?>
                <span class="phone"><?php echo ($s["sys_phone"]); ?></span>
                <small>服务时间：9:00 - 17:00</small>
            </div>

        </div>

        <hr class="dashed visible-desktop">

        <!--start: Navigation -->
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-inner">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand hidden-desktop" href="/">
                    <img src="__PUBLIC__/uploadify/uploads/logo/<?php echo ($s["sys_logo"]); ?>" style="height: 50px;" alt="<?php echo ($s["sys_briefTitle"]); ?>"></a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="<?php echo ($active["index"]); ?>"><a href="/">首页</a></li>
                        <li class="<?php echo ($active["loan"]); ?>"><a href="__ROOT__/Loan.html">我要投资</a></li>
                        <li class="<?php echo ($active["borrow"]); ?>"><a href="__ROOT__/Borrow/welfare.html">我要融资</a></li>
                    </ul>
                    <ul class="nav pull-right">

                        <li class="<?php echo ($active["security"]); ?>"><a href="__ROOT__/Site/page/id/34">安全保障</a></li>
                        <li class="<?php echo ($active["center"]); ?>"><a href="__ROOT__/Center.html">我的账户</a></li>
                        <li class="<?php echo ($active["explanation"]); ?>" ><a href="__ROOT__/Site/listTpl/id/28.html">名词解释</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!--end: Navigation -->

    </div>
    <!--end: Container-->

</header>
<!--end: Header-->
<div class="layout">
<!--头部 end -->
<div class="sub-nav" sup="Project">
    <div class="sub-nav-inner">
        <div class="container">
            <!--Navigation start-->
            <div class="navbar navbar-inverse">
                <div class="navbar-inner">
                    <ul class="nav">
                        <li <?php if((ACTION_NAME) == "index"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center.html">总览</a></li>
                        <li <?php if((ACTION_NAME) == "invest"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/invest/mid/isclosed.html">投资者</a></li>
                        <li <?php if((ACTION_NAME) == "loan"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/loan/issue.html">借款者</a></li>
                        <li <?php if((ACTION_NAME) == "fund"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/fund/mid/fundrecord.html">资金明细</a></li>
                        <li <?php if((ACTION_NAME) == "approve"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/approve/autonym.html">认证中心</a></li>
                        <li <?php if((ACTION_NAME) == "security"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/security/password.html">安全中心</a></li>
                        <li <?php if((ACTION_NAME) == "mails"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/mails.html">站内信</a></li>
                        <li <?php if((ACTION_NAME) == "basic"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/basic/personal_data.html">设置</a></li>
                    </ul>
                </div>
            </div>
            <!--Navigation end-->
        </div>
    </div>
</div>
<div class=" row-fluid">
<div class="container paddtop">
<!-- 二级-->
<ul class="center_secondary">
    <li <?php if(($mid) == ""): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/mails.html">全部信息</a></li>
    <li <?php if(($mid) == "0"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/mails/mid/0.html">未读</a></li>
    <li <?php if(($mid) == "1"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/mails/mid/1.html">已读</a></li>
    <li <?php if(($mid) == "2"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/mails/mid/2.html">回收站</a></li>
</ul>
<!-- 二级end-->
    <div id="content" class="center_zt">
    		<input id="datasort" type="hidden" value="2" />
         <table class="table table-striped" id="table">
            <thead>
              <tr>  
                <th>标题</th>
                <th>发件者</th>
                <th>时间</th>
                <th>操作</th>
              </tr>
            </thead>
            <tbody>
            <?php if(is_array($all)): $i = 0; $__LIST__ = $all;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>	
                  <td>
                    <?php if($vo["state"] == 0): ?><i class="icon icon-color icon-envelope-closed" data-rel="tooltip" title="未读"></i>
                    <?php else: ?>
                    <i class="icon icon-color icon-mail-open" data-rel="tooltip" title="已读"></i><?php endif; ?>
                    <a href="#edit" data-toggle="modal" onclick=" $('#title').html('<?php echo ($vo["title"]); ?>');mail('<?php echo ($vo["id"]); ?>')"><?php echo ($vo["title"]); ?></a>
                  </td>
                  <td>系统</td>
                  <td><?php echo (date("Y-m-d H:i",$vo["time"])); ?></td>
                  <td>
                  <?php if($vo["state"] == 2): ?><a href="#" onclick="if(confirm('是否要还原？'))window.location.href='__URL__/reduction/id/<?php echo ($vo["id"]); ?>'">还原</a>
                  <?php else: ?>
                     <a href="#" data-rel="tooltip" class="icon icon-color icon-trash" title="删除" onclick="if(confirm('是否要删除？'))window.location.href='__URL__/stationexit/<?php echo ($vo["id"]); ?>'"></a><?php endif; ?>
                  </td>  
                </tr><?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
        </table>
        <div class="pagination pagination-centered">
              <ul><?php echo ($page); ?></ul>
              </div>
    </div>
    <!-- right end--> 
</div>
<!-- container end -->
<div id="edit" class="modal hide fade in" style="top:20%">
    <div class="modal-header">
      <a class="close" data-dismiss="modal" >&times;</a>
      <h2 id="title"></h2>
    </div>
    <div class="modal-body">
    <p  id="mail_nr"></p>
        
    </div>
    <div class="modal-footer">
      <button class="btn btn-primary" data-dismiss="modal">确定</button>
    </div>
</div>
<!--底部  start-->
<script>
function mail(id){
	$("#mail_nr").load("__URL__/standLetter", {id:id});	
}
</script>
<script>
//AJAX分页
$(function(){ 
	$(".pagination-centered a").click(function(){ 
		var loading='<div class="invest_loading"><div><img src="__PUBLIC__/bootstrap/img/ajax-loaders/ajax-loader-1.gif"/></div><div>加载中...</div> </div>';
		$("#table").html(loading);
		$.get($(this).attr("href"),function(data){ 
			$("body").html(data); 
		}) 
		return false; 
	}) 
}) 
</script>
</div>
 <!-- Footer
    ================================================== -->
<div class="sup-footer" role="menu">
    <!--Container start-->
    <div class="container">


        <!--Row start-->
        <div class="row-fluid">

            <!--Contact start-->
            <div class="span6">

                <h3>联系我们</h3>

                <ul class="unstyled">
                    <li><i class="icon icon-darkgray icon-bookmark"></i>&nbsp;&nbsp;<?php echo ($s["sys_officeAddress"]); ?></li>
                    <li><i class="icon icon-darkgray icon-cellphone"></i>&nbsp;&nbsp;<?php echo ($s["sys_phone"]); ?></li>
                    <li><i class="icon icon-darkgray icon-print"></i>&nbsp;&nbsp;<?php echo ($s["sys_fax"]); ?></li>
                    <li><i class="icon icon-darkgray icon-envelope-closed"></i>&nbsp;&nbsp;<?php echo ($s["sys_email"]); ?></li>
                </ul>

            </div>
            <!--Contact end-->

            <!--Guide start-->
            <div class="span3 visible-desktop">

                <h3>关于我们</h3>

                <ul class="unstyled">
                    <li><a href="__ROOT__/Site/page/id/1.html">关于我们</a></li>
                    <li><a href="__ROOT__/Site/listTpl/id/16.html">新闻中心</a></li>
                    <li><a href="__ROOT__/Site/listTpl/id/21.html">联系我们</a></li> 
                </ul>

            </div>
            <!--Guide end-->

            <!--Law start-->
            <div class="span3 visible-desktop">

                <h3>新手指南</h3>

                <ul class="unstyled">
                    <li><a href="__ROOT__/Site/listTpl/id/28.html">名词解释</a></li>
                    <li><a href="__ROOT__/Site/page/id/29.html">收费规则</a></li>
                    <li><a href="__ROOT__/Site/listTpl/id/33.html">帮助中心</a></li>
                </ul>

            </div>
            <!--Law end-->

        </div>
        <!--Row end-->
        <hr class="dashed visible-desktop">
        <div class="row-fluid visible-desktop">
            <!--Follow start-->
            <div class="span12">
                <ul class="inline widget-list">
                    <li>
                        <a title="" data-original-title="" class="no-link qqgroup fwidget" id="qqgroup-popover" href="javascript:void(0)" data-toggle="popover" data-placement="top">
                            <span class="social-qq-pure"></span>
                            <span class="widget-text">投资理财群</span>
                        </a>
                    </li>

                    <li>
                        <a href="javascript:void(0)" target="_blank" class="weibo fwidget">
                            <span class="social-weibo-pure"></span>
                            <span class="widget-text"><?php echo ($s["sys_briefTitle"]); ?>微博</span>
                        </a>
                    </li>

                    <li>
                        <a title="" data-original-title="" class="no-link wechat fwidget" id="wechat-popover" data-toggle="popover" data-placement="top">
                            <span class="social-wechat-pure"></span>
                            <span class="widget-text"><?php echo ($s["sys_briefTitle"]); ?>微信</span>
                        </a>
                    </li>

                    <li>
                        <a class="calculator no-link fwidget" href="__ROOT__/Index/counter.html" id="act_cal">
                            <span class="social-calc-pure"></span>
                            <span class="widget-text">理财计算器</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!--Follow end-->
        </div>

            <div class="row-fluid favlink">

                <div class="span12">
                    <p>
                        <b>友情链接：</b>
                        <?php if(is_array($links)): $i = 0; $__LIST__ = $links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ls): $mod = ($i % 2 );++$i;?><span class="links_fg"><a target="_blank" href="<?php echo ($ls["url"]); ?>"><?php echo ($ls["title"]); ?></a></span><?php endforeach; endif; else: echo "" ;endif; ?>
                    </p>
                </div>

            </div>
            <div class="copyright pull-left">
                <?php echo ($s["sys_copy"]); ?>
            </div>
    </div>
    <!--Container  end-->

</div>
<!--Footer end-->


    <div class="online-service hidden-phone">
    <a class="online-service-title" href="http://wpa.qq.com/msgrd?v=3&uin=819016953&site=qq&menu=yes" target="_blank">
        <div class="social-qq-pure"></div>
        <h4 style="">在线客服</h4>
    </a>
</div>

<!--Calculator start-->
    <?php echo ($ajax_list); ?>
<!-- external javascript
	================================================== -->
	<!-- jQuery UI -->
    <!-- 首页宽屏轮播-->
	
    <!--[if lte IE 6]>
    <script type="text/javascript" src="__PUBLIC__/bootstrap/js/bootstrap-ie.js"></script>
    <![endif]-->
	<!-- bootstrap-->
    <script src="__PUBLIC__/bootstrap/js/bootstrap.min.js"></script>
    <script src="__PUBLIC__/bootstrap/js/jquery.dataTables.min.js"></script>
    <script>
	$(document).ready(function(){
		$.extend( $.fn.dataTableExt.oPagination, {
			"bootstrap": {
				"fnInit": function( oSettings, nPaging, fnDraw ) {
					var oLang = oSettings.oLanguage.oPaginate;
					var fnClickHandler = function ( e ) {
						e.preventDefault();
						if ( oSettings.oApi._fnPageChange(oSettings, e.data.action) ) {
							fnDraw( oSettings );
						}
					};
		
					$(nPaging).addClass('pagination').append(
						'<ul>'+
							'<li class="prev disabled"><a href="#">&larr; '+oLang.sPrevious+'</a></li>'+
							'<li class="next disabled"><a href="#">'+oLang.sNext+' &rarr; </a></li>'+
						'</ul>'
					);
					var els = $('a', nPaging);
					$(els[0]).bind( 'click.DT', { action: "previous" }, fnClickHandler );
					$(els[1]).bind( 'click.DT', { action: "next" }, fnClickHandler );
				},
		
				"fnUpdate": function ( oSettings, fnDraw ) {
					var iListLength = 5;
					var oPaging = oSettings.oInstance.fnPagingInfo();
					var an = oSettings.aanFeatures.p;
					var i, j, sClass, iStart, iEnd, iHalf=Math.floor(iListLength/2);
		
					if ( oPaging.iTotalPages < iListLength) {
						iStart = 1;
						iEnd = oPaging.iTotalPages;
					}
					else if ( oPaging.iPage <= iHalf ) {
						iStart = 1;
						iEnd = iListLength;
					} else if ( oPaging.iPage >= (oPaging.iTotalPages-iHalf) ) {
						iStart = oPaging.iTotalPages - iListLength + 1;
						iEnd = oPaging.iTotalPages;
					} else {
						iStart = oPaging.iPage - iHalf + 1;
						iEnd = iStart + iListLength - 1;
					}
		
					for ( i=0, iLen=an.length ; i<iLen ; i++ ) {
						// remove the middle elements
						$('li:gt(0)', an[i]).filter(':not(:last)').remove();
		
						// add the new list items and their event handlers
						for ( j=iStart ; j<=iEnd ; j++ ) {
							sClass = (j==oPaging.iPage+1) ? 'class="active"' : '';
							$('<li '+sClass+'><a href="#">'+j+'</a></li>')
								.insertBefore( $('li:last', an[i])[0] )
								.bind('click', function (e) {
									e.preventDefault();
									oSettings._iDisplayStart = (parseInt($('a', this).text(),10)-1) * oPaging.iLength;
									fnDraw( oSettings );
								} );
						}
		
						// add / remove disabled classes from the static elements
						if ( oPaging.iPage === 0 ) {
							$('li:first', an[i]).addClass('disabled');
						} else {
							$('li:first', an[i]).removeClass('disabled');
						}
		
						if ( oPaging.iPage === oPaging.iTotalPages-1 || oPaging.iTotalPages === 0 ) {
							$('li:last', an[i]).addClass('disabled');
						} else {
							$('li:last', an[i]).removeClass('disabled');
						}
					}
				}
			}
		});
     //datatable
	var datasort=$('#datasort').val()?$('#datasort').val():0;//排序根据哪列
	var dataasc=$('#dataasc').val()?"asc":"desc";//排序条件
	$('.datatable').dataTable({
			"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
			"sPaginationType": "bootstrap",
			"aaSorting": [[ datasort, dataasc ]],
			"oLanguage": {
			"sLengthMenu": "_MENU_ 每页显示数"
			}
		} );
	
});
</script>
    <script>
$(document).ready(function () {
            
            $("#wechat-popover").popover({
                html: true,
                content: "<p style='white-space:nowrap'>扫码关注<?php echo ($s["sys_briefTitle"]); ?>微信</p><div style='width:120px;height:120px;margin-left:5px;'><img src='__PUBLIC__/img/erb.jpg' style='width:120px;height:120px;'></div>",
                trigger: "hover"
            });

        $("#qqgroup-popover").popover({
            html: true,
            content: "<p style='white-space:nowrap'><?php echo ($s["sys_briefTitle"]); ?>投资理财群 : </p><p style='white-space:nowrap'>群：<a target='_blank' href='http://shang.qq.com/wpa/qunwpa?idkey=bd41e8df34767e61c882d9599becec595fb5e51476c50470c9c5f26df5ef5f2f'><img border='0' src='http://pub.idqqimg.com/wpa/images/group.png' alt='天贷-投资理财群' title='天贷-投资理财群'></a></b></p><p>申请加入投资理财群时<br />请提供<?php echo ($s["sys_briefTitle"]); ?>用户名</p>",
            trigger: "click"
        });

            //disable pager invalid link
            $('.pagination a[href^=#]').on('click', function (e) {
                e.preventDefault();
            });
            $('a.no-link[href^=#]').on('click', function (e) {
                e.preventDefault();
            });
        })	

<?php echo ($endjs); ?>
//计划任务
window.onload = Schedule();
function Schedule(){
$.post("__ROOT__/Api/Autos/timing", {id:1} );

}
$('a[href="#"][data-top!=true]').click(function(e){
		e.preventDefault();
	});
</script>

</body>
</html>