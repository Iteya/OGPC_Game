{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Boss_Room",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_3263C5D_2","path":"rooms/Boss_Room/Boss_Room.yy",},
    {"name":"inst_8689DFD_2","path":"rooms/Boss_Room/Boss_Room.yy",},
    {"name":"inst_42688F63","path":"rooms/Boss_Room/Boss_Room.yy",},
    {"name":"inst_51757F77","path":"rooms/Boss_Room/Boss_Room.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Foreground","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3263C5D_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPortal","path":"objects/oPortal/oPortal.yy",},"properties":[],"rotation":180.0,"scaleX":2.5,"scaleY":10.0,"x":5120.0,"y":1600.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_8689DFD_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlayerRoomStart","path":"objects/oPlayerRoomStart/oPlayerRoomStart.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":224.0,"y":1248.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_51757F77","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"mp","path":"objects/mp/mp.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":4864.0,"y":224.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Midground","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_42688F63","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oBoss1","path":"objects/oBoss1/oBoss1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":3648.0,"y":1088.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Walls","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":40,"SerialiseWidth":80,"TileCompressedData":[
-27,-2147483648,-53,0,-27,-2147483648,-21,0,1,38,-19,22,1,40,-55,0,1,38,-3,22,1,2,-19,1,3,3,22,40,-51,0,3,38,22,2,-25,1,2,3,40,-48,0,3,38,22,2,-28,1,1,27,-46,0,3,38,22,2,-30,1,2,3,40,-44,0,2,38,2,-33,1,1,27,-43,0,2,38,2,-34,1,1,27,-41,0,
3,38,22,2,-35,1,2,3,40,-38,0,3,38,22,2,-38,1,1,27,-36,0,3,38,22,2,-40,1,1,27,-34,0,3,38,22,2,-42,1,1,27,-32,0,3,38,22,2,-44,1,2,3,40,-28,0,4,38,22,22,2,-47,1,1,27,-20,0,1,38,-7,22,1,2,-50,1,3,3,22,40,-4,0,1,38,-13,
22,1,2,-60,1,1,3,-3,22,2,0,18,-78,1,2,0,18,-78,1,2,0,18,-78,1,2,0,18,-78,1,2,0,18,-78,1,2,0,18,-78,1,2,0,18,-78,1,3,0,45,9,-77,1,-2,0,1,45,-12,31,1,9,-60,1,1,5,-3,31,-15,0,1,45,-7,31,1,9,-50,1,3,5,31,42,-26,0,
4,45,31,31,9,-47,1,1,27,-31,0,3,45,31,9,-44,1,2,5,42,-33,0,3,45,31,9,-42,1,1,27,-36,0,3,45,31,9,-40,1,1,27,-38,0,3,45,31,9,-37,1,2,5,42,-40,0,3,45,31,9,-35,1,1,27,-43,0,2,45,9,-34,1,1,27,-44,0,2,45,9,-33,1,1,27,-45,
0,3,45,31,9,-30,1,2,5,42,-47,0,3,45,31,9,-28,1,1,27,-50,0,3,45,31,9,-25,1,2,5,42,-52,0,1,45,-3,31,1,9,-19,1,3,5,31,42,-57,0,1,45,-19,31,1,42,-3,0,-8,-2147483648,-72,0,-8,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"WallSet1","path":"tilesets/WallSet1/WallSet1.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Farground","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":40,"SerialiseWidth":80,"TileCompressedData":[
-15,-2147483648,-113,0,1,38,-19,22,1,40,-55,0,1,38,-3,22,1,2,-19,1,3,3,22,40,-51,0,3,38,22,2,-25,1,2,3,40,-48,0,3,38,22,2,-28,1,1,27,-46,0,3,38,22,2,-30,1,2,3,40,-44,0,2,38,2,-33,1,1,27,-43,0,2,38,2,-34,1,1,27,-41,0,3,38,22,2,
-35,1,2,3,40,-38,0,3,38,22,2,-38,1,1,27,-36,0,3,38,22,2,-40,1,1,27,-34,0,3,38,22,2,-42,1,1,27,-32,0,3,38,22,2,-44,1,2,3,40,-28,0,4,38,22,22,2,-47,1,1,27,-20,0,1,38,-7,22,1,2,-50,1,3,3,22,40,-3,0,-15,22,1,2,-60,1,1,
3,-3,22,-640,1,-15,31,1,9,-60,1,1,5,-3,31,-15,0,1,45,-7,31,1,9,-50,1,3,5,31,42,-26,0,4,45,31,31,9,-47,1,1,27,-31,0,3,45,31,9,-44,1,2,5,42,-33,0,3,45,31,9,-42,1,1,27,-36,0,3,45,31,9,-40,1,1,27,-38,0,3,45,31,9,-37,1,2,
5,42,-40,0,3,45,31,9,-35,1,1,27,-43,0,2,45,9,-34,1,1,27,-44,0,2,45,9,-33,1,1,27,-45,0,3,45,31,9,-30,1,2,5,42,-47,0,3,45,31,9,-28,1,1,27,-50,0,3,45,31,9,-25,1,2,5,42,-52,0,1,45,-3,31,1,9,-19,1,3,5,31,42,-3,0,-6,-2147483648,
-48,0,1,45,-19,31,3,42,0,0,-9,-2147483648,-63,0,-17,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet1","path":"tilesets/TileSet1/TileSet1.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "_Prolouge rooms!",
    "path": "folders/Rooms/_Prolouge rooms!.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 2560,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 5120,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}