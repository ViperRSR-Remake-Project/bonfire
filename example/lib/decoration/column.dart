import 'package:bonfire/bonfire.dart';
import 'package:example/manual_map/dungeon_map.dart';
import 'package:example/util/common_sprite_sheet.dart';
import 'package:flutter/cupertino.dart';

class ColumnDecoration extends GameDecoration with ObjectCollision {
  ColumnDecoration(Vector2 position)
      : super.withSprite(
          CommonSpriteSheet.columnSprite,
          position: position,
          width: DungeonMap.tileSize,
          height: DungeonMap.tileSize * 3,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea(
            width: DungeonMap.tileSize,
            height: DungeonMap.tileSize / 2,
            align: Offset(0, DungeonMap.tileSize * 1.8),
          ),
        ],
      ),
    );
  }
}
