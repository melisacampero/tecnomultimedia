class Personaje {
  constructor() {
    this.x = width / 5;
    this.y = height / 2;
    this.radio = 25;
    this.delay = 0.05;

    this.xLobo = this.x - 80;
    this.yLobo = height / 2;
    this.radioLobo = 25;
    this.delayLobo = 0.10;
  }

  calcular() {

    let diferenciaY = mouseY - this.y;
    this.y += diferenciaY * this.delay;
    this.y = constrain(this.y, this.radio, height - this.radio);

    let diferenciaYL = mouseY - this.yLobo;
    this.yLobo += diferenciaYL * this.delayLobo;
    this.yLobo = constrain(this.yLobo, this.radioLobo, height - this.radioLobo);
  }

  dibujar() {
    fill(0, 150, 200);
    image(cerdito,this.x-cerdito.width/2, this.y-cerdito.height/2);
    image(lobo, this.xLobo-lobo.width/2, this.yLobo-lobo.height/2);
  }
}