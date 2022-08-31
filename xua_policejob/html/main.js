$(document).ready(function(){
    $(".container").hide();
    $(".aangiftescherm").hide();
    $(".aangiftescherm-specifiek").hide();
    $(".aangiftescherm-aanmaken").hide();
    $(".inbeslagname-voertuig").hide();
    window.addEventListener('message', function(event){
        switch(event.data.action) {
            case "Wapenkameropen":
                OpenWapenKamer(event.data.info);
                break;
            break;
            case "Aangifteopen": 
                OpenAangiftescherm(event.data.aangiftes, event.data.steamnaam)
            break;
            case "bekijkaangifte": 
                OpenAangifteSpecifiek(event.data.data, event.data.steamnaam)
            break;
            case "maakaangifte": 
                Nieuwaangiftemaken()
            break;
            case "inbeslagnamevoertuig":
                InbeslagnameOpenen(event.data)
            break;
        }
    });
});

function OpenAangiftescherm(data, steamnaam) {
    $(".nav-item-back").text("Welkom " + steamnaam)
    $(".aangiftescherm").fadeIn();
    for (i=0; i < data.length; i++) {
        var x = (`<div class='aangifte'><div class='aangifte-info'><h1 class='aangifte-titel'>`+ data[i].Titel + `</h1><p id='aangifte-infotekst'>Datum: `+ data[i].datum + `</p><p id='aangifte-infotekst'>Opgemaakt door: `+ data[i].steamnaam +`</p><p id='aangifte-infotekst'>Aangever: `+ data[i].aangevernaam +`</p> </div><div class='aangifte-button'><button onclick='Bekijkaangifte(`+data[i].id+`)' class='aangifte-but' value='Bekijk Aangifte'>Bekijk Aangifte</button></div></div>`);
        $(".aangiftescontainer").append(x).fadeIn(400);
    }
}

function Bekijkaangifte(id) {
    $.post('http://esx_policejob/Bekijkaangifte', JSON.stringify({
        id: id, 
    })) 
    CloseEverything();
}

function Nieuwaangiftemaken() {
    $(".aangiftescherm-aanmaken").fadeIn();
    $(".invoervelden-aangifte").val("");
    $(".invoervelden-aangifte-big").val("");
}

function InbeslagnameOpenen(data) {
    $(".inbeslagname-voertuig").fadeIn();
    $("#model").val(data.model);
    $("#eigenaar").val(data.naam);
    $("#kenteken").val(data.plate);
    $("#hiddenidentifier").val(data.owner);
}


$("#neemvoertuiginbeslag").click(function(){
    var plate = $("#kenteken").val();
    var eigenaar = $("#eigenaar").val();
    var identifier = $("#hiddenidentifier").val();
    var reden =     $(".voertuigreden").val();
    if (eigenaar != "NIET GEVONDEN") {
        $.post('http://esx_policejob/voertuiginbeslagname', JSON.stringify({ 
            kenteken: plate,
            owner: identifier,
            event: "esx_policejob:server:inbeslagnemenvoertuig",
            reden: reden
        }))
        CloseEverything();
    }
    else {
        $.post('http://esx_policejob/voertuiginbeslagname', JSON.stringify({ 
            kenteken: plate,
            owner: null
        }))
        CloseEverything();
    }
})


$(".deleteaangifte").click(function() {
    var eigennaam =  $("#eigennaam").val();
    var aangevernaam =  $("#aangevernaam").val();
    var onderwerpnieuw =  $("#onderwerpnieuw").val();
    var beschrijving =  $("#Beschrijvingaangifte2").val();
    if (eigennaam != "" && aangevernaam != "" && onderwerpnieuw != "" && beschrijving != "") {
        $.post('http://esx_policejob/maakaangifte', JSON.stringify({
            eigennaam: eigennaam, 
            aangevernaam: aangevernaam,
            onderwerp: onderwerpnieuw,
            beschrijving: beschrijving,
            serverevent: "esx_policejob:server:maakaangifte"
        })) 
        CloseEverything();
    }
    CloseEverything();
})

function OpenAangifteSpecifiek(data, steamnaam) {
    $(".nav-item-back").text("Welkom " + steamnaam)
    $(".aangiftescherm-specifiek").fadeIn();
    $("#opgemaakdoor").val(data.steamnaam);
    $("#datum").val(data.datum);
    $("#Beschrijvingaangifte").val(data.info);
    $("#id-aangifte").text("Aangifte Rapport #00" + data.id);
    $("#hiddenid").val(data.id);
}

function OpenWapenKamer() {
    $(".container").fadeIn();
}

$("#deleteaangifte").click(function(){
    var id = $("#hiddenid").val();
    $.post('http://esx_policejob/Deleteaangifte', JSON.stringify({
        id: id,
        serverevent: "esx_policejob:server:deleteaangifte"
    }))
    CloseEverything();
})

$("#pakcombatpistol").click(function() {   
    $.post('http://esx_policejob/PakWapen', JSON.stringify({
        item: "WEAPON_COMBATPISTOL", 
        ammo: 300,
        serverevent: "esx_policejob-wapenkamer-pakwapen",
        label: "Combat Pistol"
    }))
    CloseEverything();
})

$("#paktaser").click(function() {   
    $.post('http://esx_policejob/PakWapen', JSON.stringify({
        item: "WEAPON_STUNGUN", 
        ammo: 1,
        serverevent: "esx_policejob-wapenkamer-pakwapen",
        label: "Taser"
    }))
    CloseEverything();
})

$("#pakzaklamp").click(function() {   
    $.post('http://esx_policejob/PakWapen', JSON.stringify({
        item: "WEAPON_FLASHLIGHT", 
        ammo: 1,
        serverevent: "esx_policejob-wapenkamer-pakwapen",
        label: "Zaklamp"
    }))
    CloseEverything();
})

$("#pakwapenstok").click(function() {   
    $.post('http://esx_policejob/PakWapen', JSON.stringify({
        item: "WEAPON_NIGHTSTICK", 
        ammo: 1,
        serverevent: "esx_policejob-wapenkamer-pakwapen",
        label: "Wapenstok"
    }))
    CloseEverything();
})

function CloseEverything() {
    $(".container").fadeOut();
    $(".aangiftescherm").fadeOut();
    $(".aangifte").remove()
    $(".aangiftescherm-specifiek").fadeOut();
    $(".aangiftescherm-aanmaken").fadeOut();
    $(".inbeslagname-voertuig").fadeOut();
}

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27:
            $.post('http://esx_policejob/close', JSON.stringify({}))
            CloseEverything()
        break; 
    }
})