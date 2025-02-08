function job_setup()
    counterstance_mode, current_counterstance_mode = {"DT", "TP"}, "DT"  --how do you want counterstance to work? DT or TP(if content doesn't hurt)
    hybrid_mode, current_hybrid_mode = {"Normal", "PDT", "Counter"}, "Normal"  --modes to use while engaged depending on content.
    engaged_mode, current_engaged_mode = {"Normal", "Acc", "High Acc", "STP"}, "Normal"  --sets the level of accuracy needed for content
    idle_mode, current_idle_mode = {"Normal", "Regen", "DT"}, "Normal"  --idle modes to swap into while we wait for content.

end
function user_setup()
    send_command("bind ^c gs c cycleCounterstanceMode") -- CTRL + c to cycle through Counterstance Modes.  DT or TP
    send_command("bind ^h gs c cycleHybridMode")        -- CTRL + h to cycle through Hybrid modes while engaged.
    send_command("bind ^e gs c cycleEngagedMode")       -- CTRL + e to cycle through the level of accuracy needed for content while engaged.
    send_command("bind ^i gs c cycleIdleMode")          -- CTRL + i to cycle through the idle settings we want.
end


function get_sets()
    init_gear_sets()
end

function init_gear_sets()

    --Need to add gearsets for precast abilities. Hundred Fists, Boost, Dodge, Focus, Counterstance, Footwork, Formless Strikes, Mantra, Chi Blast.


    sets.precast.Chakra = {ammo="Aurgelmir Orb +1",
    head="Malignance Chapeau",
    body="Anch. Cyclas +2",
    hands={ name="Hes. Gloves", augments={'Enhances "Invigorate" effect',}},
    legs="Mpaca's Hose",
    feet="Malignance Boots",
    neck="Loricate Torque +1",
    waist="Moonbow Belt +1",
    left_ear="Handler's Earring",
    right_ear="Handler's Earring +1",
    left_ring="Regal Ring",
    right_ring="Provocare Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
}

    sets.idle = {ammo="Crepuscular Pebble",
    head="Mpaca's Cap",
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Hermes' Sandals",
    neck="Loricate Torque +1",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Ilabrat Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
}
    sets.idle.DT = {}

    sets.idle.Regen = {}

    sets.engaged = {ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Ken. Samue +1",
    hands={ name="Herculean Gloves", augments={'Accuracy+23 Attack+23','"Triple Atk."+4','Attack+12',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Hizamaru Ring",
    right_ring="Ilabrat Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
    }
    
    sets.engaged.ACC = {}

    sets.engaged.HighACC = {}

    sets.engaged.STP = {}

    sets.engaged.Hybrid.PDT = {ammo="Crepuscular Pebble",
    head="Malignance Chapeau",
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands="Malignance Gloves",
    legs="Mpaca's Hose",
    feet="Malignance Boots",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Telos Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Ilabrat Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
}
    sents.engaged.Hybrid.Counter = {}

    sets.WS.Crit = {ammo="Aurgelmir Orb +1",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands="Mpaca's Gloves",
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Odr Earring",
    right_ear="Mache Earring +1",
    left_ring="Mummu Ring",
    right_ring="Begrudging Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},}

    sets.WS.MultiHit = {ammo="Coiste Bodhar",
    head="Mpaca's Cap",
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+23 Attack+23','"Triple Atk."+4','Attack+12',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Lissome Necklace",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Petrov Ring",
    back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},}

    sets.WSD = {ammo="Knobkierrie",
    head="Mpaca's Cap",
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands="Anchor. Gloves +3",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'AGI+6','Pet: Haste+1','Weapon skill damage +6%','Accuracy+16 Attack+16',}},
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

    sets.WS.TornadoKick = {ammo="Knobkierrie",
    head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands="Anchor. Gloves +3",
    legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
    feet="Anch. Gaiters +2",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }

    sets.WS.DragonKick = {ammo="Knobkierrie",
    head={ name="Hes. Crown +3", augments={'Enhances "Penance" effect',}},
    body={ name="Mpaca's Doublet", augments={'Path: A',}},
    hands="Anchor. Gloves +3",
    legs={ name="Hes. Hose +3", augments={'Enhances "Hundred Fists" effect',}},
    feet="Anch. Gaiters +2",
    neck={ name="Mnk. Nodowa +1", augments={'Path: A',}},
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}}


    sets.WS.Magic = {ammo="Knobkierrie",
    head="Pixie Hairpin +1",
    body="Nyame Mail",
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +3%','INT+15','Mag. Acc.+2',}},
    neck="Sanctity Necklace",
    waist="Orpheus's Sash",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Archon Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
} 

sets.Counterstance.DT = {}

sets.Counterstance.TP = {}



sets.Impetus_Body = {body = "Bhikku Cyclas +1"}
sets.Footwork_Feet = {feet="Anchorite's Gaiters +2"}
end
function status_change(new, old)
    if new == 'Engaged' then
        if current_engaged_mode == "ACC" then
            equip(sets.engaged.ACC)
        elseif current_engaged_mode == "High Acc" then
            equip(sets.enaged.HighACC)
        elseif current_engaged_mode == "STP" then
            equip(sets.engaged.STP)
        else
            equip(sets.engaged)
       
        if buffactive['Impetus'] then
            equip(sets.Impetus_Body)
        end
        if buffactive['Footwork'] then
            equip(sets.Footwork_Feet)
        end
        if player.hpp < 50 then
            equip(sets.engaged.PDT)
        end
        
        if buffactive['Counterstance'] then
            if current_counterstance_mode == "DT" then
                equip(sets.counterstance.DT)
            else
                equip(sets.counterstance.TP)
            end
        end
    
    elseif new == "Idle" then
        equip(sets.idle)
    end
end

function precast(spell)
    --List of all the weaponskills we'll likely use. If you want to add more, follow this "elseif then" setup.
    if spell.type == 'WeaponSkill' then
        if spell.name == "Victory Smite" then
            equip(sets.Victory_Smite)
        elseif spell.name == "Howling Fist" then
            equip(sets.Howling_Fist)
        elseif spell.name == "Howling Fist" then
            equip(sets.WSD)
        elseif spell.name == "Asuran Fists" then
            equip(sets.WS.MultiHit)
        elseif spell.name == "Ascetic's Fury" then
            equip(sets.WS.Crit)
        elseif spell.name == "Raging Fists" then
            equip(sets.WS.MultiHit)
        elseif spell.name == "Tornado Kick" then
            equip(sets.WS.TornadoKick)
        elseif spell.name == "Dragon Kick" then
            equip(sets.WS.DragonKick)
        elseif spell.name == "Shijin Spiral" then
            equip(sets.WS.MultiHit)
        elseif spell.name == "Cataclysm" then
            equip(sets.WS.Magic)
        end
    end
                                                                        --need to add job ability precasting. 
end

function aftercast(spell)
    add_to_chat(123, "Aftercast triggered for: " .. spell.name)
    if player.stats == "Engaged" and current_hybrid_mode ~= "Normal" then
        if current_hybrid_mode == "PDT" then
            equip(set.engaged.PDT)
                                                                        --need to add all the sets for hybrid
    
    
    if player.status == 'Engaged' then
        if current_engaged_mode == "ACC" then
            equip(sets.engaged.ACC)
        elseif current_engaged_mode == "High Acc" then
            equip(sets.enaged.HighACC)
        elseif current_engaged_mode == "STP" then
            equip(sets.engaged.STP)
        else
            equip(sets.engaged)
        end
        if buffactive.Impetus then
            equip(sets.Impetus_Body)
        elseif buffactive.Footwork then
            equip(sets.Footwork_Feet)
        end
        --Need to add aftercast for Counterstance
        send_command('wait .2; gs c check_buffs')
    else
        equip(sets.idle)
                                                                          --need to add sets for idle
    end
    
    if spell.name == "Impetus" then
        equip(sets.Impetus_Body)
    end
    if spell.name == "Footwork" then
        equip(sets.Footwork_Feet)
    end
end
function check_buffs()
    if buffactive.Impetus then
        equip(sets.Impetus_Body)
    elseif buffactive.Footwork then
        equip(sets.Footwork_Feet)
    elseif buffactive.Countersance then 
        if 

        equip(sets.Counterstance)
    end
end




function cycle_counterstance_mode()
    if current_counterstance_mode == "DT" then
        current_counterstance_mode == "TP"
    else
        current_counterstance_mode == "DT"
    end
    add_to_chat(122, "Countetance Mode: " .. current_counterstance_mode)
end

function cycle_engaged_mode()
    if current_engaged_mode == "Normal" then
        current_engaged_mode == "Acc"
    elseif current_engaged_mode == "Acc" then
        current_engaged_mode == "High Acc"
    elseif current_engaged_mode == "High Acc" then
        current_engaged_mode == "STP"
    elseif current_engaged_mode == "STP" then
        current_engaged_mode == "Normal"
    end
end

function cycle_hybrid_mode()
    if current_hybrid_mode == "Normal" then
        current_hybrid_mode == "PDT"
    elseif current_hybrid_mode == "PDT" then
        current_hybrid_mode == "Counter"
    elseif current_hybrid_mode == "Counter" then
        current_hybrid_mode == "Normal"
    end
end

function cycle_idle_mode()
    if current_idle_mode == "Normal" then
        current_idle_mode == "Regen"
    elseif current_idle_mode == "Regen" then
        current_idle_mode == "DT"
    elseif current_idle_mode == "DT" then
        current_idle_mode == "Normal"
    end
end

function self_command(command)
    if command == "cycleCounterstanceMode" then
        cycle_counterstance_mode()
    end
    if command == "cycleEngagedMode" then
        cycle_engaged_mode()
    end
    if command == "cycleHybridMode" then
        cycle_hybrid_mode()
    end
    if command == "cycleIdleMode" then
        cycle_idle_mode()
    end
end


    

