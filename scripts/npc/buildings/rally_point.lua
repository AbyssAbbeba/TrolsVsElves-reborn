function MoveToRallyPoint( event )
    local caster = event.caster
    local target = event.target
    DebugPrint("[BAREBONES] I am in my rally point script")

    -- Change this to your desired Vector, usually as an hscript:GetAbsOrigin()
    --local position = Vector(420,322,128) 
    local entityByName = Entities:FindByName(nil, "target_dire")
    DebugPrint(entityByName)

    local position2 = entityByName:GetAbsOrigin()
    local position = hscript:GetAbsOrigin()

    ExecuteOrderFromTable({ UnitIndex = target:GetEntityIndex(), 
                            OrderType = DOTA_UNIT_ORDER_ATTACK_MOVE,
                            Position = position2, Queue = true })
    print(target:GetUnitName().." moving to position",position2)

    local player = caster:GetPlayerOwner()
    local hero = player:GetAssignedHero()
    target:SetOwner(hero)
    
end