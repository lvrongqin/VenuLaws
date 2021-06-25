
    $(function () {
        //各页面当前页数和总数
        var hqfzCur = null;
        var hqfzTot = null;
        var fzlsCur = null;
        var fzlsTot = null;
        var mrmyCur = null;
        var mrmyTot = null;
        var flxzsCur = null;
        var flxzsTot = null;
        var xfrCur = null;
        var xfrTot = null;
        var xxxcCur = null;
        var xxxcTot = null;

        //json数据长度
        var JsonLength = 0;

        //获取页面的信息个数
        var msgLen = $("#law_list li").length;

        //获取要修改的目标
        var target = $("#law_list li a");

        //获取json数据的长度
        function getJsonLength(obj) {
            for (var item in obj)
                JsonLength++;
            var length = JsonLength;
            JsonLength = 0;
            return length;
        }

        //子新闻发送请求
        function newsAjax(targetId, urlStr, hrefStr) {
            $.ajax({
                url: urlStr,
                type: "get",
                data: { "id": targetId },
                dataType: "json",
                success: function (resp) {
                    window.location.href = hrefStr;
                },
                error: function () { alert("请求错误") }
            });
        }

        //判断发送请求
        function sendAjax(targetId) {
            if ($(".ch").text() == '环球法治')
                newsAjax(targetId, "${pageContext.request.contextPath }/wh/whqFindById", "${pageContext.request.contextPath }/html/whqFindById.jsp");
            else if ($(".ch").text() == '法治历史')
                newsAjax(targetId,"/wh/wlsFindById", "/html/wlsFindById.jsp");
            else if ($(".ch").text() == '名人名言')
                newsAjax(targetId,"/wh/wmyFindById", "/html/wmyFindById.jsp");
            else if ($(".ch").text() == '法律小知识')
                newsAjax(targetId,"/wh/wzsFindById", "/html/wzsFindById.jsp");
            else if ($(".ch").text() == '124宪法日')
                newsAjax(targetId,"/wh/wxfFindById", "/html/wxfFindById.jsp");
            else if ($(".ch").text() == '线下宪法宣传')
                newsAjax(targetId,"/wh/wxcFindById", "/html/wxcFindById.jsp");
        }

        //封装js修改页面内容
        function ALTERContent(resp, page) {
            for (let i = 0; i < msgLen; i++) {
                target[i].children[0].innerHTML = "";
                target[i].children[1].innerHTML = "";
            }
            //如果消息数可以整除
            if (getJsonLength(resp.data) % msgLen == 0) {
                //修改列表信息
                for (let i = 0; i < msgLen; i++) {
                    target[i].index = parseInt(page) * msgLen - (msgLen - 1) + i;
                    target[i].children[0].innerHTML = resp.data[target[i].index - 1].title;
                    target[i].children[0].setAttribute("id", target[i].index);
                    if (target[i].children[1])
                        target[i].children[1].innerHTML = resp.data[target[i].index - 1].time;
                    $(target[i]).click(function () {
                        sendAjax(target[i].index.toString());
                    })
                }
            }
            //如果消息数不能整除
            else if (getJsonLength(resp.data) % msgLen != 0) {
                //如果不是最后一页
                if (parseInt(page) < Math.ceil(getJsonLength(resp.data) / msgLen)) {
                    for (let i = 0; i < msgLen; i++) {
                        target[i].index = parseInt(page) * msgLen - (msgLen - 1) + i;
                        target[i].children[0].innerHTML = resp.data[target[i].index - 1].title;
                        target[i].children[0].setAttribute("id", target[i].index);
                        if (target[i].children[1])
                            target[i].children[1].innerHTML = resp.data[target[i].index - 1].time;
                        $(target[i]).click(function () {
                            sendAjax(target[i].index.toString());
                        })
                    }
                }
                //如果是最后一页
                else if (parseInt(page) == Math.ceil(getJsonLength(resp.data) / msgLen)) {
                    for (let i = 0; i < getJsonLength(resp.data) % msgLen; i++) {
                        target[i].index = parseInt(page) * msgLen - (msgLen - 1) + i;
                        target[i].children[0].innerHTML = resp.data[target[i].index - 1].title;
                        target[i].children[0].setAttribute("id", target[i].index);
                        if (target[i].children[1])
                            target[i].children[1].innerHTML = resp.data[target[i].index - 1].time;
                        $(target[i]).click(function () {
                            sendAjax(target[i].index.toString());
                        })
                    }
                }
            }

        }

        //封装请求
        function HQFZ(page) {
            $.ajax({
                url: "${pageContext.request.contextPath }/wh/whqGetPageData",
                type: "get",
                data: { "curr": page },
                dataType: "json",
                success: function (resp) {
                    $(".ch").text("环球法治");
                    $(".en").text("Global");
                    hqfzCur = page;
                    hqfzTot = resp.pb.totalPage.toString();
                    //修改当前页码
                    $("#cur span").text(hqfzCur);
                    //修改总页码
                    $("#tot span").text(hqfzTot);
                    ALTERContent(resp, page);
                },
                error: function () { alert("请求错误") }
            })
        }
        function FZLS(page) {
            $.ajax({
                url: "${pageContext.request.contextPath }/wh/wlsGetPageData",
                type: "get",
                data: { "curr": page },
                dataType: "json",
                success: function (resp) {
                    $(".ch").text("法治历史");
                    $(".en").text("History");
                    fzlsCur = page;
                    fzlsTot = resp.pb.totalPage.toString();
                    //修改当前页码
                    $("#cur span").text(fzlsCur);
                    //修改总页码
                    $("#tot span").text(fzlsTot);
                    ALTERContent(resp, page);
                },
                error: function () { alert("请求错误") }
            })
        }
        function MRMY(page) {
            $.ajax({
                url: "${pageContext.request.contextPath }/wh/wmyGetPageData",
                type: "get",
                data: { "curr": page },
                dataType: "json",
                success: function (resp) {
                    $(".ch").text("名人名言");
                    $(".en").text("Quotes");
                    mrmyCur = page;
                    mrmyTot = resp.pb.totalPage.toString();
                    //修改当前页码
                    $("#cur span").text(mrmyCur);
                    //修改总页码
                    $("#tot span").text(mrmyTot);
                    ALTERContent(resp, page);
                },
                error: function () { alert("请求错误") }
            })
        }
        function FLXZS(page) {
            $.ajax({
                url: "${pageContext.request.contextPath }/wh/wzsGetPageData",
                type: "get",
                data: { "curr": page },
                dataType: "json",
                success: function (resp) {
                    $(".ch").text("法律小知识");
                    $(".en").text("Knowledge");
                    flxzsCur = page;
                    flxzsTot = resp.pb.totalPage.toString();
                    //修改当前页码
                    $("#cur span").text(flxzsCur);
                    //修改总页码
                    $("#tot span").text(flxzsTot);
                    ALTERContent(resp, page);
                },
                error: function () { alert("请求错误") }
            })
        }
        function XFR(page) {
            $.ajax({
                url: "${pageContext.request.contextPath }/wh/wxfGetPageData",
                type: "get",
                data: { "curr": page },
                dataType: "json",
                success: function (resp) {
                    $(".ch").text("124宪法日");
                    $(".en").text("Constitution");
                    xfrCur = page;
                    xfrTot = resp.pb.totalPage.toString();
                    //修改当前页码
                    $("#cur span").text(xfrCur);
                    //修改总页码
                    $("#tot span").text(xfrTot);
                    ALTERContent(resp, page);
                },
                error: function () { alert("请求错误") }
            })
        }
        function XXXC(page) {
            $.ajax({
                url: "${pageContext.request.contextPath }/wh/wxcGetPageData",
                type: "get",
                data: { "curr": page },
                dataType: "json",
                success: function (resp) {
                    $(".ch").text("");
                    $(".en").text("");
                    xxxcCur = page;
                    xxxcTot = resp.pb.totalPage.toString();
                    //修改当前页码
                    $("#cur span").text(xxxcCur);
                    //修改总页码
                    $("#tot span").text(xxxcTot);
                    ALTERContent(resp, page);
                },
                error: function () { alert("请求错误") }
            })
        }

        HQFZ(1 + "");

        $("#hqfz").click(function () {
            HQFZ(1 + "");
        });
        $("#fzls").click(function () {
            FZLS(1 + "");
        });
        $("#mrmy").click(function () {
            MRMY(1 + "");
        });
        $("#flxzs").click(function () {
            FLXZS(1 + "");
        });
        $("#xfr").click(function () {
            XFR(1 + "");
        });
        $("#xxxc").click(function () {
            XXXC(1 + "");
        });






        //分页按钮部分

        //分页按钮排他加样式
        function exclusive(obj) {
            $(".pages a").removeClass("pageActive");
            //如果是当前页和总页则不显示
            if (obj.prop("id") == 'cur' || obj.prop("id") == 'tot')
                obj.removeClass("pageActive");
            else
                obj.addClass("pageActive")
        }

        function btnJudge(obj,fn) {
            //如果点的是第一页，则请求第一页
            if (obj.prop("id") == 'first')
               fn(1 + "");//传递第一页
            //如果点的是上一页
            else if (obj.prop("id") == 'pre') {
                //如果当前页是第一页，那么就继续发送第一页请求
                if ($("#cur span").text() == '1')
                    fn(1 + "");//传递第一页
                else {//如果不是，则发送当前页数减1
                    fn($("#cur span").text() - 1);
                }
            }
            //如果点的是下一页
            else if (obj.prop("id") == 'next') {
                //如果当前页是最后页，那么就继续发送最一页的请求
                if ($("#cur span").text() == $("#tot span").toString())
                    fn($("#tot span") + "");
                else {//如果不是，则发送当前页数加1
                    fn((parseInt($("#cur span").text()) + 1) + "");
                }
            }
            //如果点的是尾页
            else if (obj.prop("id") == 'last') {
                fn($("#tot span") + "");//传递最后一页
            }
        }

        $(".pages a").click(function () {
            exclusive($(this));
            //如果当前页面是环球法治
            if ($(".ch").text() == '环球法治') 
                btnJudge($(this),HQFZ)
            else if($(".ch").text() =='法治历史')
                btnJudge($(this),FZLS)
            else if($(".ch").text() =='名人名言')
                btnJudge($(this),MRMY)
            else if($(".ch").text() =='法律小知识')
                btnJudge($(this),FLXZS)
            else if($(".ch").text() =='124宪法日')
                btnJudge($(this),XFR)
            else if($(".ch").text() =='线下宣传')
                btnJudge($(this),XXXC)
        })
    })
