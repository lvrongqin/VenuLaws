<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/html/styles/simditor.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/html/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/html/scripts/module.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/html/scripts/hotkeys.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/html/scripts/uploader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/html/scripts/simditor.js"></script>
    <link rel="stylesheet" href="http:////at.alicdn.com/t/font_2422366_l20hgby3l6.css">
    <title>后台管理页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/html/styles/administrator.css">
    <style>
        .simditor input{

        }
    </style>
</head>

<body>
    <div class="bgMod"></div>
    <div id="container">
        <!-- <div id="header"> <img src="../image/2.png"><img src="../image/3.png"> -->
        <div id="header"> <img src="${pageContext.request.contextPath }/image/logo1.png">
            <div id="word1">启明普法教育平台管理页面</div>
            <div id="word2">管理员：${admin.username}</div>
        </div>
        <div class="wrapper ">
            <div class="leftMod">
                <ul>
                    <li class="wjgl_btn" ><a href="${pageContext.request.contextPath }/administrator" class="active">文件管理</a></li>
                    <li><a href="${pageContext.request.contextPath }/administrator1">文件上传</a></li>
                    <li><a href="${pageContext.request.contextPath }/hd/hjlAll">评论交流</a></li>
                </ul>
            </div>
            <div class="rightMod">
                <section id="wjgl">
                    <form action="#">
                        <div class="wjgl_sort">
                            <div class="wjgl_title">
                                请选择文件类别
                            </div>
                            <select name="category" id="category">
                                <option id="first" value="pfjxs">普法进行时</option>
                                <option  value="tdnjs">团队内建设</option>
                                <option  value="xnwzx">校内外资讯</option>
                                <option  value="yasfalfx">以案释法案例分析</option>
                                <option  value="yasffljd">以案释法法律解读</option>
                                <option  value="hqfz">普法教育法治文化环球</option>
                                <option  value="fzls">普法教育法法治文化历史</option>
                                <option  value="mrmy">普法教育法治文化名人名言</option>
                                <option  value="xzs">普法教育线上教育小知识</option>
                                <option  value="xfr">普法教育线下活动124宪法</option>
                                <option  value="xxxc">普法教育线下活动宣传</option>
                            </select>
                            <div class="iptTile">
                                请输入内容标题<br />
                                <input type="text" placeholder="请输入内容标题" id="title" name="title">
                            </div>
                            <div class="iptContent">
                                请输入内容<br /><br />
                                <textarea id="editor" placeholder="请输入您要编辑的内容" autofocus id="content"></textarea>
                                <input type="button" value="提交" id="gl">
                            </div>
                        </div>
                    </form>
                </section>
            </div>
            <script>
                // 初始化Simditor
                var editor = new Simditor({
                    textarea: $('#editor')
                });

                // 初始化Simditor
                var editor = new Simditor({
                    textarea: $('#editor'),
                    toolbar: [
                        'title',        // 标题
                        'bold',         // 加粗文字
                        'italic',       // 斜体文字
                        'underline',    // 下划线
                        'strikethrough',// 删除线
                        '|',            // 控件分隔线
                        'fontScale',    // 字体大小
                        'color',        // 字体颜色
                        'ol',           // 有序列表
                        'ul',           // 无序列表
                        'blockquote',   // 引用
                        'code',         // 代码块
                        'table',        // 表格
                        'link',         // 链接
                        'image',        // 图片
                        'hr',           // 分割线
                        'indent',       // 向右缩进
                        'outdent',      // 向左缩进
                        'alignment'     // 水平对齐
                    ],
                    placeholder: '请输入内容吧！',
                    toolbarFloat: true,
                    upload: {
                        // 图片上传接口路径
                        url: '${pageContext.request.contextPath}/upload',
                        // 上传时的附加参数
                        params: null,
                        // 图片提交key
                        fileKey: 'file',
                        // 本地最大同时上传数
                        connectionCount: 3,
                        // 上传时退出的提示信息
                        leaveConfirm: '正在上传中，你确定要退出吗?',
                        // 允许粘贴图片时快速上传
                        pasteImage: true,
                        // 粘贴时清除html样式
                        cleanPaste: true,
                    },
                });
            </script>
            <script>
                $(function(){
                    $("#gl").click(function(){
                        $.ajax({
                            url:"${pageContext.request.contextPath}/selectBy",
                            method:"post",
                            data:{
                                "category": $("#category option:selected").val(),
                                "title": $("#title").val(),
                                "content": editor.getValue()
                            },
                            success:function (resp){
                                alert("添加成功!!")
                                // $('#category #first').attr('selected','selected');
                                $('.iptTile input').val('');
                                $('.simditor .simditor-body').empty();
                            }
                        })
                    })
                })
            </script>
        </div>
    </div>
</body>

</html>