import 'package:flame/game.dart';

class EmberQuestGame extends FlameGame {
  EmberQuestGame();

  // 重载onLoad(), 启动的时候把资产先加载
  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'block.png',
      'ember.png',
      'ground.png',
      'heart_half.png',
      'heart.png',
      'star.png',
      'water_enemy.png',
    ]);
  }
}