function loadDisplay(clicked_id) {
    console.log(clicked_id)
    var selectedview = clicked_id + "view";
    var views = ["loadAllBetsview",
        "createEventview",
        "leaderboardview",
        "myWagersview",
        "updateUserview"
    ];
    for (let i = 0; i < views.length; i++) {
        if (views[i] == selectedview) {
            document
                .getElementById(selectedview).classList
                .add("active");

        } else {
            document
                .getElementById(views[i]).classList
                .remove("active");
        }
    }

    var viewCard = document
        .getElementById("View")
    console.log(viewCard)
}

function addContender() {
    $("#contender-names")
        .append(
            '<input type="text" name="contenderName" class="form-control my-1">');
    $("#contender-odds")
        .append(
            ' <input type="number" name="contenderOdds" min="1", max="100" step="1" class="form-control my-1">')
}

function addsubcategory() {
    $('#sub-cateory-container')
        .append(
            '<input type="text" name="cname" class="form-control my-1">')
}

function toggleContender(clicked_id) {
    var contender = document
        .getElementById(clicked_id).innerHTML;
    document
        .getElementById("contenderName").value = contender;
    var contenderBtn = document
        .getElementById(clicked_id);
    contenderBtn.id;
    var contId = document
        .getElementById("contenderId");
    if (contenderBtn.classList
        .contains("btn-secondary")) {
        contenderBtn.classList
            .remove("btn-secondary")
        contenderBtn.classList
            .add("btn-primary");
    } else {
        contenderBtn.classList
            .remove("btn-primary");
        contenderBtn.classList
            .add("btn-secondary");
    }
}