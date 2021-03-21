
#intro_altar_spawn_block

dung_intro_spawn_boss_altar:
    type: world
    events:
        on player right clicks block:
        - if <context.location> == <location[intro_altar_spawn_block].block>:
            - if <player.item_in_hand> == <item[dung_intro_spawn_boss_book]>:
                - determine cancelled passively
                - spawn zombie <player.location>
                - playeffect effect:EXPLOSION_HUGE at:<player.location> visibility:500 quantity:10 offset:2.0


dung_intro_spawn_boss_book:
    type: book
    title: <red>Книга призыва
    author: <red>Маг
    signed: true
    text:
    - В каком-то алтаре эта книга призывает босса