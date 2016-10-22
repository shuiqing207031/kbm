var zTree;
var demoIframe;
var newCount=1;
function addHoverDom(treeId, treeNode) {
    var sObj = $("#" + treeNode.tId + "_span");
    if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
    var addStr = '<span class="button remove" id="removeBtn_' + treeNode.tId + '" title="add node" onfocus="this.blur();"></span>';

    addStr += '<span class="button add" id="addBtn_' + treeNode.tId + '"></span>';
    addStr += '<span class="button edit" id="editBtn_' + treeNode.tId + '"></span>';
    sObj.after(addStr);
    var btn = $("#addBtn_"+treeNode.tId);
    if (btn) btn.bind("click", function(){
        var zTree = $.fn.zTree.getZTreeObj("ztree");
        zTree.addNodes(treeNode, {id:(1000 + newCount), pId:treeNode.id, name:"new node" + (newCount++)});
        window.open("editArticle.do");
        return false;
    });
};

function removeHoverDom(treeId, treeNode) {
    $("#addBtn_"+treeNode.tId).unbind().remove();
    $("#removeBtn_"+treeNode.tId).unbind().remove();
    $("#editBtn_"+treeNode.tId).unbind().remove();
};

var setting = {
    check: {
        enable: true
    },
    view: {
        addHoverDom: addHoverDom,
        removeHoverDom: removeHoverDom,
        dblClickExpand: false,
        showLine: true,
        selectedMulti: false
    },
    data: {
    	key:{
    		name:"CHNLNAME",
    		path:"PATH"
    	},
        simpleData: {
            enable:true,
            idKey: "treeId",
            pIdKey: "pId",
            rootPId: ""
        }
    },
    callback: {
        beforeClick: function(treeId, treeNode) {
            var zTree = $.fn.zTree.getZTreeObj("ztree");
            if (treeNode.isParent) {
                zTree.expandNode(treeNode);
                return false;
            } else {
            	$.post("channle.do",{view:"queryArticle",chnlId:treeNode.treeId},function(data){
            		alert(data.length);
            		if (data.length>0){
            			zTree.addNodes(treeNode,data);
            			zTree.expandNode(treeNode,true,true,true);
            		}
            	},"json");
                return true;
            }
        }
    }
};


function loadReady() {
    var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
        htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
        maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
        h = demoIframe.height() >= maxH ? minH:maxH ;
    if (h < 530) h = 530;
    demoIframe.height(h);
}
