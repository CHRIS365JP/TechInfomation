            $('selector').jqGrid('clearGridData');
            $('selector').jqGrid('setGridParam', {
                datatype: "local",
                data: 'data'
            }).trigger("reloadGrid");
