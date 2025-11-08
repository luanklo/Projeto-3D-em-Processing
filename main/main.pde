void setup() {
    fullScreen(P3D);
    background(55);
    smooth();
}

void draw() {
    background(30);
    pointLight(255, 255, 255, 0, 0, 200);
    ambientLight(100, 100, 100);

    translate(width / 2, height / 2, 0);

    rotateX(frameCount * 0.01f);
    rotateY(frameCount * 0.01f);

    pushMatrix();
    translate(-150, 0, 0);
    fill(0, 150, 255);
    box(100);
    popMatrix();

    pushMatrix();
    translate(150, 0, 0);
    fill(255, 180, 0);
    drawPyramid(100, 100);
    popMatrix();
}

void drawPyramid(float base, float height) {
    float half = base / 2;

    beginShape(TRIANGLES);
    vertex(-half,  half,  half);
    vertex( half,  half,  half);
    vertex( 0,    -height/2, 0);

    vertex( half,  half,  half);
    vertex( half,  half, -half);
    vertex( 0,    -height/2, 0);

    vertex( half,  half, -half);
    vertex(-half,  half, -half);
    vertex( 0,    -height/2, 0);

    vertex(-half,  half, -half);
    vertex(-half,  half,  half);
    vertex( 0,    -height/2, 0);
    endShape();

    beginShape(QUADS);
    vertex(-half,  half,  half);
    vertex( half,  half,  half);
    vertex( half,  half, -half);
    vertex(-half,  half, -half);
    endShape();
}