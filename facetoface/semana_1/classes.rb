function newStartFighter(model, pilot) {
  var startFighter = {
    model: model,
    pilot: pilot,
    shoot: function (target) {
      console.log(this.pilot + ' is shooting ' + target.pilot);
    }
  };
  return startFighter;
}

var xwing = newStartFighter('X-Wing', 'Luke Skywalker');
var tie = newStartFighter('TIE Fighter', 'Darth Vader');
tie.shoot(xwing);