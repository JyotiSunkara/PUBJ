# PUBG 

An OpenGL implementation of a three-dimensional third-person-shooter open world game inspired by the wildly popular Player Unknown’s Battlegrounds (PUBG). 

## Manual

## **`Argon`**

The name is derived from the Greek work *`argos`*, meaning idle. The main character in the game is a shiny steel Cyborg who is seemingly weaponless and defenseless much like the unreactive noble gas Argon. Argon The Cyborg however has impeccable mind control on all weaponry except modern drones. He has his personal powerful weapon in this game, the Jölnir which he can reload and fire as he wishes.

<div style="text-align:center"><img src="images/Argon.png" 
         alt="Argon"></div> 

## **`Jölnir`**

Jölnir is the gun of Argon, the Cyborg associated with mind control. Jölnir is one of the most fearsome and powerful weapons in existence, capable of annihilating drones. It carries `20` bullets at once and can annihilate with a 500 metre range.

<div style="text-align:center"><img src="images/gun.png" 
         alt="Jolnir"></div> 

## **`Drones`**

Drones are spawned in the world around Argon and as soon as they come into existense they take up the single minded goal of attacking Argon The Cyborg. They zoom towards Argon's position in the world and if a drone comes in contact with Argon, the game has been lost.

<div style="text-align:center"><img src="images/drone.png" 
         alt="Drone"></div> 

## **`Context`**

As soon as the game begins Argon is free to move in the world surrounded by mountains using the controls. `150` drones are spawned in total at different points in time and space. If all `150` drones are annihilated by Argon, he wins the game. If any drone collides with Argon, the game is lost. Argon has a total of `5` health tokens which means he can refill the gun `5` times either manually or automatically. Every refill of the gun gives Argon `30` bullets. The score is calculated based on how many drones Argon has annihilated, where `10` points are given for each annihilated drone! The time remaining is also displayed on the scree which means Argon must get rid of the drones as fast as possible. Argon is given `1000` seconds to complete the mission and hence must remain incentivised to win the game as fast as possible!

## Controls

## **`W A S D`**
The above four keys can be used to move forward, lefward, backward and righward respectively.

## **`F`**
Enable fog mode, where all distant objects are enveloped and obscured by a greyish fog.

## **`C`**
Clears the sky by getting rid of the foggy envelope, if present.

## **`V R`**
Either of these keys can be used to trigger the reloading of the gun manually. The reloading process is done automatically when the bullets of the round are emptied and Argon is still in good health! (Health > 0)

## **`Space Bar`**
Hit the spacebar to make Argon take a tiny leap. This can be used in combination with movement to create bounding leaps across the terrain!

## **`Mouse Control`**
The mouse can be user to orient Argon in the direction of choice by moving it!

## **`Right Click`**
This makes Argon and The Jölnir move forward in the currently facing direction.

## **`Left Click`**
This is cause The Jölnir to fire a bullet at the point pointed at by the reticle in the centre of the screen. 

## Playing  
### Installation
Most Linux distributions rely on the Mesa3D project to provide their OpenGL implementation. Hence, install  Mesa, Make and GCC/g++ first.

```bash
    > sudo apt-get install build-essential libgl1-mesa-dev
```

This projects makes great use of GLEW, GLM and FreeType. So next we install those development libraries.

```bash
    > sudo apt-get install libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev libfreetype6-dev
```
### Running 
To play the game by running the excecutable, do the following!
```bash
    > git clone 
    > cd PUBG
    > ./run.sh
```

This creates a build directory and copies the Makefile into it. The Makefile generates all the required `.o` files and stores them in an `obj` directory located in `build`. Then the excecutable is created and stored in the build directory. Finally, the excecutable is run!

## Features 
### `Terrain` 

The terrain is made of textured tiles simulating bumps and non-uniformity and is surrounded by mountains in all directions!

### `Sky`
The sky is a cloud textured dome placed on the top of the world to create a realistic appearance.

### `Grass`
Grass blades cover every part of the terrain.
- Trees
- World
- Shooter
- Fog
- Heads Up Display

    Health

    Drone Count

    Bullet Count 

    Time Remaining

    Score


## Special Features 

- Bobbing
- Recoil
- Reload
- Shooting Spark
- Waving Grass
- Fire Smoke
- Spray
- Reticle
A reticle placed on the screen indicates where the 
Ammonition count displayed around the reticle as teeny bullets!
- Sounds

    Drone Warning 

    Nature

    Shot

    Hit

    Explode

    Splatter

- Blood Splatter
- Death Impact


## Code

### Third Party
All the libraries and headers installed and used in this game have been added here for convinience.

### LodePNG
### Claudette
### Meshes
### Directories 