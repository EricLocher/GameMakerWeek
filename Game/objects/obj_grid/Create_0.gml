//Create the grid
var cellWidth = 32;
var cellHeight = 32;

var hCells = room_width div cellWidth;
var vCells = room_height div cellHeight;

global.grid = mp_grid_create(0, 0, hCells, vCells, cellWidth, cellHeight);

//Add the walls
mp_grid_add_instances(global.grid, Obj_Solid, false);
mp_grid_add_instances(global.grid, Obj_Slab, false);
mp_grid_add_instances(global.grid, Obj_Slope, false);
mp_grid_add_instances(global.grid, Obj_SlabCorner, false);
mp_grid_add_instances(global.grid, Obj_Corner, false);