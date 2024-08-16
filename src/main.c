#include "color.h"
#include "raylib.h"
#include <stdio.h>
#include "sodium.h"
Camera3D GenerateCamera(void) {
  Camera3D camera;
  camera.position = (Vector3){0.0f, 0.0f, 0.0f};
  camera.up = (Vector3){0.0f, 0.0f, 0.0f};
  camera.target = (Vector3){0.0f, 0.0f, 0.0f};
  camera.fovy = 45.0f;
  camera.projection = CAMERA_PERSPECTIVE;
  return camera;
}
struct GameState {
  Color color1;
  Color color2;
  int playerpoints;
};

typedef struct GameState GameState;

void InitNewGameState(GameState *state) {
  state->color1 = (Color)GenRandomColor();
  state->color2 = (Color)GenRandomColor();
  state->playerpoints = 0;

}

Texture2D GenBackgroundText(GameState *state,int rotation){
  Image background_image;
  if (rotation == 0){
    background_image = GenImageGradientLinear(800, 800, 0, state->color1, state->color2);
  }
  else{
    background_image = GenImageGradientLinear(800, 800, 0, state->color1, state->color2);

  }
  Texture2D texture = LoadTextureFromImage(background_image);
  UnloadImage(background_image);
  return texture;

}






int main(void) {

  
  InitWindow(800, 800, "raylib");
  int time = 0;  
  Camera3D camera = GenerateCamera();
  GameState state;
  

  InitNewGameState(&state);


  
  
  Texture2D background = GenBackgroundText(&state,time);
  


  while (!WindowShouldClose()) {
    UpdateCamera(&camera, CAMERA_ORBITAL);
      // background = GenBackgroundText()
    BeginDrawing();
    {
      // ImageClearBackground(&background_image, WHITE);
      ClearBackground(BLACK);
      DrawTexture(
        background,
        0,
        0,
        WHITE);

      DrawFPS(0, 0);
    }
    EndDrawing();    
    // UnloadTexture(
    //   background
    // );
    
    time++;
  }
  
  CloseWindow();
}
