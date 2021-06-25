$(function () {
    $(".search-box").mouseover(
        function (event) {
            event.stopPropagation();
            event.preventDefault();
            $(this).css({
                width: 400,
                float: "right"
            });
            $(".search-text").css({
                width: 300,
                display: "block",
                fontSize: 14,
                borderBottom: "#bdc3c7 2px solid"
            });
            $(".search-text").focus();
        }),
        $(".search-text").blur(
            function () {
                $(".search-box").css({
                    width: 35,
                });
                $(".search-text").css({
                    width: 0,
                    borderBottom: "none"
                });
            }
        );
})