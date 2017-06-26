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
    <li <?php if(($mid) == "autonym"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/approve/autonym.html">实名认证</a></li>
    <li <?php if(($mid) == "email"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/approve/email.html">邮箱认证</a></li>
    <li <?php if(($mid) == "cellphone"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/approve/cellphone.html">手机认证</a></li>
    <li <?php if(($mid) == "video"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/approve/video.html">视频认证</a></li>
    <li <?php if(($mid) == "scene"): ?>class="active"<?php endif; ?>><a href="__ROOT__/Center/approve/scene.html">现场认证</a></li>
</ul>
<!-- 二级end-->
    <div id="content" class="center_zt">
<?php if(is_array($user_details)): $i = 0; $__LIST__ = $user_details;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; switch($mid): case "autonym": ?><!--实名认证 start-->
            <form method="post"  action='__URL__/autonymUpda'>
                <?php if($certification == 0 or $certification == 3 ): ?><input name="certification" type="hidden" value="1"/>
                <table class="table">
                    <tbody>
                        <tr>
                            <td>真实姓名：</td>
                            <td><input name="name" type="text" class="span2"/></td>
                         </tr>
                         <tr>
                            <td>性别：</td>
                            <td class="form-inline">
                            	<label class="radio"><input type="radio" name="gender" value="0" checked/> 男</label>
                                <label class="radio"><input type="radio" name="gender" value="1" /> 女</label>
                            </td>
                         </tr>
                         <tr>
                            <td>民族：</td>
                            <td>
                            	<select name="national" style="width:100px;">   
                                        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo["value"] == 56): ?><option value='<?php echo ($vo["value"]); ?>' selected><?php echo ($vo["name"]); ?></option>
                                        <?php else: ?>
                                        <option value='<?php echo ($vo["value"]); ?>' ><?php echo ($vo["name"]); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </td>
                         </tr>
                         <tr>
                            <td>出生日期：</td>
                            <td>
                            <input name="born" type="text" id="activitytime"/>
                            </td>
                         </tr>
                         <tr>
                            <td>身份证号：</td>
                            <td><input name="idcard" type="text" /></td>
                         </tr>
                         <tr>
                            <td>籍贯：</td>
                            <td  class="form-inline approve_sf" id="area">
									<select id="province"  name="native_place[]" style="width:100px;"></select><span>省</span><select id="city" style="width:110px;"  name="native_place[]"></select><span>市</span><select id="county"  style="width:140px;" name="native_place[]"></select>
                            </td>
                         </tr>
                         <tr>
                            <td>身份证正面上传：</td>
                            <td>
                            	<div id="file_up_content"></div>
                                <input class="folder" type="hidden" value="idcard"/>
                                 <input class="file_url" type="hidden" value="__PUBLIC__/uploadify/uploads/idcard/"/>
                                <input data-no-uniform="true" type="file" id="file_up" />
                            </td>
                            
                         </tr>
                         <tr>
                            <td>身份证反面上传：</td>
                            <td>
                              	<div id="file2_up_content"></div>
                                <input data-no-uniform="true" type="file" id="file_up2" />
                            </td>
                            
                         </tr>
                    </tbody>
                </table>
                
                 <div class="span10">
                  <button class="btn btn-primary" type="submit">
                      确认提交
                  </button>
                </div>
                 <?php elseif($certification == 1): ?>
                <div class="alert alert-info span10">
                    <a class="close" data-dismiss="alert">×</a>
                    <p>实名认证已提交，审核时间为1-3个工作日，请耐心等待。</p>
                </div>
                <?php else: ?>
                <table class="table">
                    <tbody>
                        <tr>
                            <td>用户名：</td>
                            <td><?php echo ($vo["username"]); ?></td>
                        </tr>
                        <tr>
                            <td>真实姓名：</td>
                            <td><?php echo ($vo["name"]); ?></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td><?php echo ($vo["gender"]); ?></td>
                        </tr>
                        <tr>
                            <td>民族：</td>
                            <td><?php echo ($vo["national"]); ?></td>
                        </tr>
                        <tr>
                            <td>出生日期：</td>
                            <td><?php echo (date("Y-m-d",$vo["born"])); ?></td>
                        </tr>
                        <tr>
                            <td>身份证号：</td>
                            <td><?php echo (substr($vo["idcard"],0,13)); ?>*****</td>
                        </tr>
                        <tr>
                            <td>籍贯：</td>
                            <td><?php echo ($vo["native_place"]); ?></td>
                        </tr>
                    </tbody>
                </table><?php endif; ?>
            <!--实名认证 end--><?php break;?>
            <?php case "email": ?><!--邮箱认证 start-->
            <form method="post"  action='__URL__/emailVerify'>
                <?php if($vo["email_audit"] == 2 ): ?><div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您的邮箱已激活<?php echo ($vo["email"]); ?></p>
                </div>
                <?php else: ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您的邮箱还没有通过认证<?php echo ($vo["email"]); ?></p>
                </div>
                <div class="approve_email">
                    <span style="width:100px;">邮箱：</span>
                    <span><input name="email" type="text" value="<?php echo ($vo["email"]); ?>"/></span>
                    <span><button class="btn btn-primary" type="submit">发送验证</button></span>
                </div><?php endif; ?>
            <!--邮箱认证 end--><?php break;?>
            <?php case "cellphone": ?><!--手机认证 start-->
                <?php if($vo["cellphone_audit"] == 2 ): ?><div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您的手机已通过认证。<?php echo ($vo["cellphone"]); ?></p>
                </div>
                
                <?php elseif($vo["cellphone_audit"] == 1 ): ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>手机认证已提交，我们的工作人员会及时联系您的。<?php echo ($vo["cellphone"]); ?></p>
                </div>
                <?php else: ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您的手机还没通过认证。</p>
                </div>
                    <?php if($s["sys_appphone"] == 1): else: ?>
                    <form method="post"  action='__URL__/appphone'>
                        <div class="approve_email">
                            <span style="width:100px;">手机号码：</span>
                            <span><input name="cellphone" maxlength="11"   type="text" value="<?php echo ($vo["cellphone"]); ?>"/></span>
                            <span><button type="submit" class="btn btn-primary">提交</button></span>
                        </div><?php endif; endif; ?>
            <!--手机认证 end--><?php break;?>
            <?php case "video": ?><!--视频认证 start-->
            <form method="post"  action='__URL__/tfUpda'>
            <input name="q" type="hidden" value="ufo" />
            <input name="u" type="hidden" value="__URL__/approve/video" />
            <input name="n" type="hidden" value="视频认证申请" />
            <input name="g" type="hidden" value="uid" />
            <input name="sid" type="hidden" value="<?php echo (session('user_uid')); ?>" />
            <input name="video_audit" type="hidden" value="1" />
                <?php if($vo["video_audit"] == 2 ): ?><div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您已通过视频认证。</p>
                </div>
                <?php elseif($vo["video_audit"] == 1 ): ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>视频认证已申请，工作人员将在1-5个工作日联系您进行认证。</p>
                </div>
                <?php else: ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您还没通过视频认证。请申请认证，我们的客服会联系您，请耐心等待</p>
                </div>
                <table class="table">
                    <tbody>
                        <tr class="span12">
                            <td class="span2">
                            	<button class="btn btn-primary" type="submit">申请认证</button>
                            </td>
                            <td class="span8">
                            </td>
                        </tr>
                    </tbody>
                </table><?php endif; ?>
            <!--视频认证 end--><?php break;?>
            <?php case "scene": ?><!--现场认证 start-->
            <form method="post"  action='__URL__/tfUpda'>
            <input name="q" type="hidden" value="ufo" />
            <input name="u" type="hidden" value="__ROOT__/Center/approve/scene.html" />
            <input name="n" type="hidden" value="现场认证申请" />
            <input name="g" type="hidden" value="uid" />
            <input name="sid" type="hidden" value="<?php echo (session('user_uid')); ?>" />
            <input name="site_audit" type="hidden" value="1" />
                <?php if($vo["site_audit"] == 2 ): ?><div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您已通过现场认证。</p>
                </div>
                <?php elseif($vo["site_audit"] == 1 ): ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>现场认证已申请，工作人员将在1-5个工作日联系您，请耐心等待。</p>
                </div>
                <?php else: ?>
                <div class="alert alert-info">
            		<a class="close" data-dismiss="alert">×</a>
                    <p>您还没通过现场认证。请申请认证，我们的客服会联系您并安排现场认证</p>
                </div>
                <table class="table">
                    <tbody>
                        <tr class="span12">
                            <td class="span2">
                            	<button class="btn btn-primary" type="submit">申请认证</button>
                            </td>
                            <td class="span8">
                            </td>
                        </tr>
                    </tbody>
                </table><?php endif; ?>
            <!--现场认证 end--><?php break;?>
            <?php case "vip": ?><!--VIP start-->
                <form method="post"  action='__URL__/updaVip'>
                <?php if($vip_points == 0): ?><table class="table">
                    <tbody>
                         <tr>
                            <td>付费模式：</td>
                            <td class="approve_vip">
                            	<a id="vip_1" class="hove" href="#" onclick="vipmod(1)">按月付费</a>
                                <a id="vip_2" href="#" onclick="vipmod(2)">按年付费</a>
                            </td>
                         </tr>
                         <tr>
                            <td>开通时长：</td>
                            <td class="input-append">
                            <input type="text" name="length" id="length" class="span4" value="1" onkeyup="vipmod();value=value.replace(/[^0-9]/g,'')"/><span id="year"  class="add-on">月</span>
                            <input name="mod" id="mod" type="hidden" value="1" />
                            </td>
                         </tr>
                         <tr>
                            <td>应付金额：</td>
                            <td><span class="approve_with"><?php echo ($systems["sys_vipm"]); ?><input name="price" type="hidden" value="<?php echo ($systems["sys_vipm"]); ?>" /></span>&nbsp;&nbsp;<span style="font-size: 16px;">元</span></td>
                         </tr>
                        <tr>
                            <td></td>
                            <td>
                            <button class="btn btn-primary" type="submit">
                              确认提交
                          </button>
                            </td>
                         </tr>
                    </tbody>
                </table>
               
                 <div class="span10">
                  
                </div>
                 <?php elseif($vip_points == 1): ?>
                 <div class="alert alert-info">
                    <a class="close" data-dismiss="alert">×</a>
                    <p>VIP申请已提交，审核时间为1-3个工作日，请耐心等待。</p>
                </div>
                 <?php elseif($vip_points == 3): ?>
                 <div class="alert alert-info">
                    <a class="close" data-dismiss="alert">×</a>
                    <p>VIP申请失败，请重新申请</p>
                 </div>
                    <table class="table">
                    <tbody>
                         <tr>
                            <td>付费模式：</td>
                            <td class="approve_vip">
                            	<a id="vip_1" class="hove" href="#" onclick="vipmod(1)">按月付费</a>
                                <a id="vip_2" href="#" onclick="vipmod(2)">按年付费</a>
                            </td>
                         </tr>
                         <tr>
                            <td>开通时长：</td>
                            <td class="input-append">
                            <input type="text" name="length" id="length" class="span4" value="1" onkeyup="vipmod();value=value.replace(/[^0-9]/g,'')"/><span id="year"  class="add-on">月</span>
                            <input name="mod" id="mod" type="hidden" value="1" />
                            </td>
                         </tr>
                         <tr>
                            <td>应付金额：</td>
                            <td><span class="approve_with"><?php echo ($systems["sys_vipm"]); ?><input name="price" type="hidden" value="<?php echo ($systems["sys_vipm"]); ?>" /></span>&nbsp;&nbsp;<span style="font-size: 16px;">元</span></td>
                         </tr>
                         <tr>
                            <td></td>
                            <td>
                            <button class="btn btn-primary" type="submit">
                              确认提交
                          </button>
                            </td>
                         </tr>
                    </tbody>
                </table>
               
                 <div class="span10">
                  
                </div>
                <?php elseif($vip_points == 4): ?>
                 <div class="alert alert-info">
                    <a class="close" data-dismiss="alert">×</a>
                    <p>VIP已过期，请重新申请</p>
                 </div>
                    <table class="table">
                    <tbody>
                         <tr>
                            <td>付费模式：</td>
                            <td class="approve_vip">
                            	<a id="vip_1" class="hove" href="#" onclick="vipmod(1)">按月付费</a>
                                <a id="vip_2" href="#" onclick="vipmod(2)">按年付费</a>
                            </td>
                         </tr>
                         <tr>
                            <td>开通时长：</td>
                            <td class="input-append">
                            <input type="text" name="length" id="length" class="span4" value="1" onkeyup="vipmod();value=value.replace(/[^0-9]/g,'')"/><span id="year"  class="add-on">月</span>
                            <input name="mod" id="mod" type="hidden" value="1" />
                            </td>
                         </tr>
                         <tr>
                            <td>应付金额：</td>
                            <td><span class="approve_with"><?php echo ($systems["sys_vipm"]); ?><input name="price" type="hidden" value="<?php echo ($systems["sys_vipm"]); ?>" /></span>&nbsp;&nbsp;<span style="font-size: 16px;">元</span></td>
                         </tr>
                        <tr>
                            <td></td>
                            <td>
                            <button class="btn btn-primary" type="submit">
                              确认提交
                          </button>
                            </td>
                         </tr>
                    </tbody>
                </table>
                <?php else: ?>
                <div class="alert alert-info">
                    <a class="close" data-dismiss="alert">×</a>
                    <p>你已经是VIP会员</p>
                </div><?php endif; ?>
            <!--VIP end--><?php break;?>
            <?php case "other": ?><!--其它 start-->
           <div class="other row-fluid">
           <?php if(is_array($linkage)): $i = 0; $__LIST__ = $linkage;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="span4 wall">
              <?php echo ($vo["name"]); ?>
               <?php if($vo["state"] == 0): ?><a href="#undo" data-toggle="modal" onclick="$('#type').val('<?php echo ($vo["value"]); ?>');" class="label label-info">认证</a>
               <?php elseif($vo["state"] == 1): ?>
               <a href="javascript:void(0)" class="label label-warning">审核中</a>
               <?php elseif($vo["state"] == 2): ?>
               <a href="javascript:void(0)" class="label label-success">已通过</a>
               <?php else: ?>
               <a href="#undo" data-toggle="modal" onclick="$('#type').val('<?php echo ($vo["value"]); ?>');" class="label label-important">重新认证</a><?php endif; ?>
               </div><?php endforeach; endif; else: echo "" ;endif; ?>
              
           </div>
            <!--其它 end--><?php break;?>
            <?php default: ?>空<?php endswitch;?>
     </form><?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
</div>
    <!-- right end--> 
<!-- container end -->
<!--申请 start-->
<div id="undo" class="modal hide fade in" >
    <div class="modal-header">
      <a class="close" data-dismiss="modal" >&times;</a>
      <h3>认证</h3>
    </div>
    <div class="modal-body">
    <form method="post"  action='__URL__/certification'  class="form-horizontal">
    <input id="type" name="type" type="hidden" value=""/>
    	<table class="table table-striped table-bordered table-condensed">
        <tbody>
          <tr>
            <td style="width:100px;">
                   证明材料:
            </td>
            <td>
                   <div id="file_up_content"></div>
                    <input class="folder" type="hidden" value="approve"/>
                     <input class="file_url" type="hidden" value="__PUBLIC__/uploadify/uploads/approve/"/>
                    <input data-no-uniform="true" type="file" id="file_up" />
            </td>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td style="width:100px;">
                   验证码:
            </td>
            <td>
                 <input type="text" class="span2" name="proving" placeholder="验证码" maxlength="4">
          <img class="CaptchaImage" id="verifyImg" src='__APP__/Public/verify/' onClick="changeVerify()" title="点击刷新验证码" data-rel="tooltip" style="cursor:pointer;padding-left: 5px;position: relative;top: 5px;"/>
            </td>
          </tr>
        </tbody>
        </table>
        <div class="modal-footer">
        <button class="btn btn-primary" type="submit">
              确认提交
          </button>   
          </div> 
    </form>
    </div>
</div>
<!--申请 end-->

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
<script src="__PUBLIC__/jquery/Validform_v5.3.2min.js"></script>
<script language="JavaScript">
function changeVerify(){
	var timenow = new Date().getTime();
	document.getElementById("verifyImg").src="/index.php/Public/verify/"+timenow;
}
 $(function(){
	$(".form-horizontal").Validform();  //就这一行代码！;
})
</script>

<script src="__PUBLIC__/js/region.js"></script>
<script src="__PUBLIC__/js/jq_area.js"></script>
<script>
$(function(){
	$("#area").area({cache:region});
});
</script>
<script src="__PUBLIC__/js/jquery.datetimepicker.js"></script>
<script>
$('#activitytime').datetimepicker({lang:'ch',timepicker:false,format:'Y/m/d',});
</script>
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