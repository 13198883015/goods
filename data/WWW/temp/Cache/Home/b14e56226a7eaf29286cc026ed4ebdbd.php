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
                 <?php if($b["id"] > 0 ): ?><ul class="nav">
                        <li <?php if(($b["type"]) == "1"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Borrow/index/mortgage.html">抵押标</a></li>
                        <li <?php if(($b["type"]) == "2"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Borrow/index/pledge.html">质押标</a></li>
                        
                    </ul>
                 <?php else: ?>
                 	<ul class="nav">
                        <li <?php if(($_GET['mid']) == "mortgage"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Borrow/index/mortgage.html">抵押标</a></li>
                        <li <?php if(($_GET['mid']) == "pledge"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Borrow/index/pledge.html">质押标</a></li>
                        
                    </ul><?php endif; ?>
                </div>
            </div>
            <!--Navigation end-->
        </div>
    </div>
</div>
<div class=" row-fluid">
<!-- container start --> 
<div class="container paddtop">
<?php if($b["id"] > 0 ): ?><form method="post"  action='__URL__/ordinaryEdit'  class="form-horizontal" >
<input name="sid" type="hidden" value="<?php echo ($_GET['mid']); ?>" />
<?php else: ?>
<form method="post"  action='__URL__/ordinaryAdd'  class="form-horizontal" ><?php endif; ?>

        <?php switch($_GET['mid']): case "mortgage": ?><input name="type" type="hidden" value="1" /><?php break;?>
            <?php case "pledge": ?><input name="type" type="hidden" value="2" /><?php break;?>
            <?php default: ?><input name="type" type="hidden" value="<?php echo ($b["type"]); ?>" /><?php endswitch;?>
        
    <table class="table table-striped table-bordered table-condensed">
        <thead>
          <tr>
            <th colspan="3" >
            	<div class="alert alert-error">
            		<a class="close" data-dismiss="alert">×</a>
                    发布借款信息必须先进行<a href="__ROOT__/Center/approve/autonym.html">《实名认证》</a>
                    <br />带*号必填，请填写真实有效的信息，以便更快通过审核，借到钱
                </div>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style="width:100px;">
                   *标题:
            </td>
            <td>
                   <input name="title" type="text" class="span5" placeholder="请输入标题..."  maxlength="25"  datatype="*" nullmsg="请输入标题！" value="<?php echo ($b["title"]); ?>">
            </td>
            <td style="width:500px;">
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    填写借款标题，写的好一点，能借到的机会就大一点
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   *年利率:
            </td>
            <td>
            	<div  class="input-append">
					<input name="rates" class="span3" type="text" maxlength="2"  datatype="n" nullmsg="请输入年利率！" value="<?php if(($b["rates"]) >= "1"): echo (floor($b["rates"])); endif; ?>"><span class="add-on">%</span>
            	</div>
            </td>
            <td>
            	<div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    填写您提供给投资者的年利率,所填写的利率是您还款的年利率<br />年利率不能超过银行当期利率的4倍
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   借款用途:
            </td>
            <td>
                   <select name="use" class="span4">   
                   <?php if(is_array($linkage["use"])): $i = 0; $__LIST__ = $linkage["use"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["use"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
            </td>
            <td>
             	<div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    说明借款的具体用途
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   统计单位:
            </td>
            <td>
            	<label class="checkbox inline counter_check">
                    <input name="candra" type="radio" value="0" <?php echo ($b['candra']==0?checked:''); ?> onclick="switchover(1);">
                    按月
                </label>
                <label class="checkbox inline counter_check">
                    <input name="candra" type="radio" value="1" <?php echo ($b['candra']==1?checked:''); ?> onclick="switchover(2);">
                    按天
                </label>
            </td>
            <td>
               	<div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    按月或按天
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   借款期限:
            </td>
            <td>
            	<label class=" inline">
                <?php if($b['candra'] == 0 ): ?><select name="deadline" style="width:80px;" id="deadline">   
                <?php else: ?>
                <select style="width:80px;display: none;" id="deadline"><?php endif; ?>
                    <?php if(is_array($linkage["deadline_month"])): $i = 0; $__LIST__ = $linkage["deadline_month"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["deadline"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                    <?php if($b['candra'] == 0 ): ?><select style="width:80px;display: none;" id="deadline1">   
                    <?php else: ?>
                     <select name="deadline" style="width:80px;" id="deadline1"><?php endif; ?>
                    
                     <?php if(is_array($linkage["deadline_day"])): $i = 0; $__LIST__ = $linkage["deadline_day"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["deadline"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                </label>
            </td>
            <td>
               	<div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    借款周期
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   还款方式:
            </td>
            <td>
                   <select name="way" class="span4">   
                    <?php if(is_array($linkage["way"])): $i = 0; $__LIST__ = $linkage["way"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["way"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    还款方式：1、每月付利息，到期付本金2、每月付利息+本金
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   有效时间:
            </td>
            <td>
                   <select name="valid" style="width:80px;">   
                   <?php if(is_array($linkage["valid"])): $i = 0; $__LIST__ = $linkage["valid"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["valid"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    此标展示天数，进度满100%直接进入复审环节
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   密码标状态:
            </td>
            <td>
           		   <label class="checkbox inline counter_check">
                        <input name="code" type="radio" value="0" <?php echo ($b['code']==0?checked:''); ?>  onclick="$('#pass1').hide();$('#pass').show();">
                        关
                    </label>
                    <label class="checkbox inline counter_check">
                        <input name="code" type="radio" value="1" <?php echo ($b['code']==1?checked:''); ?>  onclick="$('#pass1').show();$('#pass').hide();">
                        开
                    </label>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    如果设为密码标，只有知道密码的投资者才能够进行投标
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   密码:
            </td>
            <td>
                   <span id="pass" class="input-xlarge uneditable-input span2" style="<?php echo ($b['code']==1?'display: none;':''); ?>"></span>
                   <input id="pass1" name="password" type="password" class="span4" value="<?php echo ($b["password"]); ?>" placeholder="请输入密码..." style="<?php echo ($b['code']==1?'':'display: none;'); ?>">
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    如果设为密码标，请在此处填写密码
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   最低投标金额:
            </td>
            <td>
                   <select name="min" style="width:80px;">   
                    <?php if(is_array($linkage["min"])): $i = 0; $__LIST__ = $linkage["min"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["min"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    允许投资者对一个借款标的最低投标金额的限制
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   最高投标金额:
            </td>
            <td>
                   <select name="max" style="width:100px;">   
                    <?php if(is_array($linkage["max"])): $i = 0; $__LIST__ = $linkage["max"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ue): $mod = ($i % 2 );++$i; if($b["max"] == $ue["value"] ): ?><option value='<?php echo ($ue["value"]); ?>' selected="selected"><?php echo ($ue["name"]); ?></option>
                            <?php else: ?>
                            <option value='<?php echo ($ue["value"]); ?>' ><?php echo ($ue["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                    </select>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    允许投资者对一个借款标的投标总额的限制
                </div>
            </td>
          </tr>
        </tbody>
       <!-- <tbody>
          <tr>
            <td>
                   隐私状态:
            </td>
            <td>
                   <input name="privacy" data-no-uniform="true" type="checkbox" class="iphone-toggle"  value="1" checked="checked">
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    是否对非VIP会员公开身份信息、个人信息
                </div>
            </td>
          </tr>
        </tbody>-->
        <tbody>
          <tr>
            <td>
                   *借款金额:
            </td>
            <td>
            	<div  class="input-append">
                <?php if($_GET['mid']== 'guarantee'): ?><input name="money" type="text" class="span2" placeholder="请输入借款金额..." onkeyup="var money=$(this).val();$('#surplus').val(money);$('#assure').val(money);moneys(money);" maxlength="7"  datatype="n3-7" nullmsg="请输入借款金额！"><span class="add-on">元</span>
                   	<input id="assure" name="assure" type="hidden" />
                    <input id="surplus" name="surplus" type="hidden" />
                <?php else: ?>
                    <input name="money" value="<?php if(($b["money"]) >= "1"): echo (floor($b["money"])); endif; ?>" type="text" class="span8" placeholder="请输入借款金额..." onkeyup="var money=$(this).val();$('#surplus').val(money);moneys(money);" maxlength="7"  datatype="n3-7" nullmsg="请输入借款金额！"><span class="add-on">元</span>
                    <input id="surplus" name="surplus" type="hidden"  value="<?php if(($b["money"]) >= "1"): echo (floor($b["money"])); endif; ?>"/><?php endif; ?>
                </div>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    借款金额应在100元至9,000,000元之间。交易币种均为人民币。<BR />
                    <a target="_blank" href="__ROOT__/Site/page/id/29.html" class="atv">
                </div>
            </td>
          </tr>
        </tbody>
        <?php if($_GET['mid']== 'guarantee'): ?><tbody>
          <tr>
            <td>
                   担保奖励:
            </td>
            <td>
            <div  class="input-append">
               <input name="flow_deadline" type="text" class="span1" maxlength="2" datatype="n" nullmsg="请输入担保奖励！"><span class="add-on">%</span>
            </div>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    给担保人的担保奖励，如借贷1000，担保奖励为1%，担保人担保500，那担保人可以获得500*1%=5元
                </div>
            </td>
          </tr>
        </tbody>
       <!-- <tbody>
          <tr>
            <td>
                   指定担保人:
            </td>
            <td>
                <input name="reward" class="span4" type="text">
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    多个担保人以|分割
                </div>
            </td>
          </tr>
        </tbody>--><?php endif; ?>
        <tbody>
          <tr>
            <td>
                   投标奖励:
            </td>
            <td>
            	<label class="radio"><input type="radio" name="reward_type" value="0" <?php echo ($b['reward_type']==0?'checked':''); ?> onclick="choose_reward(1)"/> 无</label><BR />
          		<div class="input-prepend input-append" style="margin-bottom: 10px;">
                <label class="radio"><input type="radio" name="reward_type" value="1" <?php echo ($b['reward_type']==1?'checked':''); ?> onclick="choose_reward(2)"/> </label>
                <span class="add-on">按金额奖励：</span><input id="reward_1" name="reward" value="<?php if(($b["reward_type"]) == "1"): echo (floor($b["reward"])); endif; ?>" class="span4 input-xlarge" type="text" <?php echo ($b['reward_type']==1?'':'disabled'); ?>><span class="add-on">元</span>
                </div>
                <div class="input-prepend input-append">
                <label class="radio"><input type="radio" name="reward_type" value="2" <?php echo ($b['reward_type']==2?'checked':''); ?>  onclick="choose_reward(3)"/> </label>
                <span class="add-on">按比例奖励：</span><input id="reward_2" name="reward" value="<?php if(($b["reward_type"]) == "2"): echo (floor($b["reward"])); endif; ?>" class="span4 input-xlarge" type="text" <?php echo ($b['reward_type']==2?'':'disabled'); ?>><span class="add-on">%</span>
                </div>
            </td>
            <td>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    奖励金额将会冻结您帐户中相应的账户余额，请确保帐户有足够的余额
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   资料上传:
            </td>
            <td>
            <ul class="thumbnails" id="file_content">
            <?php if(is_array($b["data"])): foreach($b["data"] as $kid=>$vo): ?><li id="i<?php echo ($kid); ?>">
                	<div class="top"><a class="icon icon-color icon-close" onclick="intExit(<?php echo ($kid); ?>,'<?php echo ($vo); ?>')"></a></div>
                    <a id="feila<?php echo ($kid); ?>" >
                    <img id="feil<?php echo ($kid); ?>" src="__PUBLIC__/uploadify/uploads/mark/<?php echo ($vo); ?>" style="width:150px;height:150px;">
                    </a>
                    <input name="img[]" type="hidden"  value="<?php echo ($vo); ?>"/>
                </li><?php endforeach; endif; ?>
            </ul>
             <input id="file_url" type="hidden" value="__PUBLIC__/uploadify/uploads/mark/"/>
            <input id="folder" type="hidden" value="mark"/>
            <input data-no-uniform="true" type="file" name="file_goods" id="file_goods" />      
            </td>
            <td>
            	<div class="alert alert-info">
                    <a class="close" data-dismiss="alert">×</a>
                    上传一些证明资料，可为空<br />
                    <a href="__ROOT__/Home/Site/article/id/23.html" class="atv">《资料上传规范》</a>
                </div>
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td>
                   详细说明:
            </td>
            <td colspan="2" >
              	<textarea  class="editor span12" name="content" style="height:400px;"><?php echo ($b["content"]); ?></textarea>
            </td>
          </tr>
        </tbody>
      </table>

      	  <div>
          <input type="text" class="span1" name="proving" placeholder="验证码" maxlength="4">
          <img class="CaptchaImage" id="verifyImg" src='__APP__/Public/verify/' onClick="changeVerify()" title="点击刷新验证码" data-rel="tooltip" style="cursor:pointer;padding-left: 5px;position: relative;top: 5px;"/>
          </div>
            <div>
            <button class="btn btn-primary" type="submit">
              确认提交
           </button>
            </div>
</form>
</div>
</div>
<!-- container end -->
<script src="__PUBLIC__/jquery/Validform_v5.3.2min.js"></script>
<script>
function choose_reward(type){
	if (type==1){
		$("#reward_1").attr("disabled","disabled");
		$("#reward_2").attr("disabled","disabled");
	}else if(type==2){
		$("#reward_1").removeAttr("disabled");
		$("#reward_2").attr("disabled","disabled");
	}else{
		$("#reward_2").removeAttr("disabled");
		$("#reward_1").attr("disabled","disabled");
	}
}
function changeVerify(){
    var timenow = new Date().getTime();
    document.getElementById('verifyImg').src='__APP__/Public/verify/'+timenow;
}
function switchover(id){
	if(id==1){
		$('#deadline1').hide();$('#deadline').show();$('#deadline').attr('name','deadline');$('#deadline1').attr('name','');
	}else{
		$('#deadline1').show();$('#deadline').hide();$('#deadline1').attr('name','deadline');$('#deadline').attr('name','');
	}
}
 $(function(){
	//$(".form-horizontal").Validform();  //就这一行代码！;

	$(".form-horizontal").Validform({
		datatype:{
			"me" : /^[\u4E00-\u9FA5\uf900-\ufa2d\w]{2,16}$/,
		}
	});
})
function intExit(id,img)
{
	$('#i'+id).empty();
}
</script>
<!--底部  start-->
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
<script src="__PUBLIC__/bootstrap/js/jquery-ui-1.8.21.custom.min.js"></script>

<!-- 选择或下拉增强器 -->
<script src="__PUBLIC__/bootstrap/js/jquery.chosen.min.js"></script>
<!-- 整输入器复选框、广播和文件 -->
<script src="__PUBLIC__/bootstrap/js/jquery.uniform.min.js"></script>
<!-- editor -->
<script src="__PUBLIC__/editor/kindeditor-min.js"></script>
<!-- 通知插件-->
<script src="__PUBLIC__/bootstrap/js/jquery.noty.js"></script>
<!-- 自动增长textarea插件 -->
<script src="__PUBLIC__/bootstrap/js/jquery.autogrow-textarea.js"></script>
<!-- 多个文件上传插件-->
<script src="__PUBLIC__/bootstrap/js/jquery.uploadify-3.1.min.js"></script>
<!-- 为魅力演示应用程序脚本 -->
<script src="__PUBLIC__/bootstrap/js/charismah.js"></script>