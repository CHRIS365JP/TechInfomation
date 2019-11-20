        $.ajax({
            url: "URL",
            type: "POST",
            data: JSON.stringify(data),
            contentType: 'application/json',
            datatype: "json",
            async: false
        }).success(function (result) {
            // DOSOMETHING
        }).error(function(){
            location.href = "SystemError";
        });
