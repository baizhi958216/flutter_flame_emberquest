import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutterflamegame/actors/ember.dart';

class EmberQuestGame extends FlameGame {
  EmberQuestGame();

  late EmberPlayer _emberPlayer;
  
  final world = World();
  late final CameraComponent cameraComponent;

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
    
    cameraComponent = CameraComponent(world: world);
    cameraComponent.viewfinder.anchor = Anchor.topLeft;
    addAll([cameraComponent, world]);

    _emberPlayer = EmberPlayer(position: Vector2(128, canvasSize.y - 70),);
    world.add(_emberPlayer);
  }
}