//4- Write a class Car with properties brand, model, and a method displayInfo().
class Car{

  String _brand;
  String _model;

  Car(this._brand, this._model);

  String displayInfo () => 'Car brand: $_brand\nCar model: $_model';
}