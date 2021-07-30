class Box {

  float x;
  float y;

  float w;
  float h;

  Body body;

  Box(float x, float y) {
    this.x=x;
    this.y=y;

    this.w = random(5, 15);
    this.h = random(5, 15);

    // 1. Define Body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(this.x, this.y));

    // 2. Create Body
    this.body = box2d.createBody(bd);

    // 3. Create Shape
    PolygonShape ps = new PolygonShape();
    float box2Dw = box2d.scalarPixelsToWorld(this.w/2);
    float box2Dh = box2d.scalarPixelsToWorld(this.h/2);
    ps.setAsBox(box2Dw, box2Dh);

    // 4. Create Fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;

    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

    // 5. Attach Shape to Body with Fixture
    this.body.createFixture(fd);
  }

  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(this.body);
    float angle = this.body.getAngle();

    pushMatrix();
    translate(pos.x, pos.y);
    fill(127);
    stroke(0);
    rotate(-angle);
    strokeWeight(2);
    rectMode(CENTER);
    rect(0, 0, this.w, this.h);
    popMatrix();
  }

  void update() {
  }
}
