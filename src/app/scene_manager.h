#pragma once

// Игровая сцена (экран): меню, уровень и т.д.
// Не путать с Scene из render.h (это набор мешей для рисования).
typedef struct AppScene
{
	const char* name;
	void (*enter)(void);   // вызывается один раз при входе в сцену
	void (*update)(void);  // логика + отрисовка, каждый кадр
	void (*exit)(void);    // освободить всё, что создал enter
} AppScene;

// Переключение откладывается до начала следующего app_scene_update(),
// поэтому его безопасно вызывать из update() текущей сцены.
void app_scene_switch(const AppScene* next);
void app_scene_update(void);